#!/usr/bin/env bash
set -e

# === Toolchain (adjust if your paths differ) ===
CLANG=${CLANG:-$HOME/tools/llvm-project/build/bin/clang++}
LLVMLINK=${LLVMLINK:-$HOME/tools/llvm-project/build/bin/llvm-link}

DEFAULT_SRC="/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/tensorflow_harness.cc"
SRC=${1:-$DEFAULT_SRC}

DEFAULT_OUT="$(pwd)/$(basename "$SRC" .cc).bc"
OUT=${2:-$DEFAULT_OUT}

# === Repo root detection ===
# If PROJECT_ROOT is set, use it; otherwise infer from harness path:
if [[ -n "$PROJECT_ROOT" ]]; then
  ROOT="$PROJECT_ROOT"
else
  # -> go up two directories from SRC
  SRC_ABS=$(realpath "$SRC")
  ROOT=$(dirname "$(dirname "$SRC_ABS")")
fi

echo "📦 ROOT: $ROOT"
echo "🧪 HARNESS: $SRC"
echo "🎯 OUT: $OUT"

# === Core includes (seed) ===
INCLUDES=(-I"$ROOT" -I"$ROOT/tensorflow")

# === Preload useful TF include roots ===
PRELOAD_INCLUDES=(
  "$ROOT/tensorflow/core"
  "$ROOT/tensorflow/cc"
#  "$ROOT/tensorflow/tsl"
#  "$ROOT/tensorflow/tsl/c"
#  "$ROOT/third_party"
#  "$ROOT/third_party/eigen3"
#  "$ROOT/third_party/xla"
#  "$ROOT/third_party/xla/xla"
#  "$ROOT/third_party/xla/xla/tsl"
#  "$ROOT/third_party/xla/third_party/tsl"
)

for p in "${PRELOAD_INCLUDES[@]}"; do
  INCLUDES+=("-I$p")
done

KLEE_HEADER="$HOME/tools/klee/include/klee/klee.h"
if [[ -f "$KLEE_HEADER" ]]; then
  KLEE_DIR="$(dirname "$(dirname "$KLEE_HEADER")")"
  echo "🧠 Found KLEE headers at: $KLEE_DIR"
  INCLUDES+=("-I$KLEE_DIR")
fi

# === Sources to build ===
OUTDIR="$ROOT/build/bitcode"
mkdir -p "$OUTDIR"
HARNESS_BC="$OUTDIR/$(basename "$SRC" .cc).bc" 

TENSOR_ARRAY_OPS_CC="$ROOT/tensorflow/core/kernels/tensor_array_ops.cc"
TENSOR_ARRAY_OPS_BC="$OUTDIR/tensor_array_ops.bc"

OP_KERNEL_CC="$ROOT/tensorflow/core/framework/op_kernel.cc"
OP_KERNEL_BC="$OUTDIR/op_kernel.bc"

STATUS_CC="$ROOT/tensorflow/core/platform/status.cc"
STATUS_BC="$OUTDIR/status.bc"

EXTRA_SRCS=()
EXTRA_BCS=()

MAX_ROUNDS=${MAX_ROUNDS:-25}
round=1

compile_all() {
  : > clang.err

  #echo "$CLANG"
  #command -v "$CLANG" || echo "CLANG not found in PATH"
  #file "$CLANG"
  #"$CLANG" --version

  ls -l /home/mushfiqur/Desktop/Github/tensorflow/tensorflow/tensorflow_harness.cc
  test -s /home/mushfiqur/Desktop/Github/tensorflow/tensorflow/tensorflow_harness.cc && echo "harness OK"

  OUTDIR=/home/mushfiqur/Desktop/Github/tensorflow/build/bitcode
  mkdir -p "$OUTDIR" && touch "$OUTDIR"/.write-test && rm "$OUTDIR"/.write-test

  CXXFLAGS+=(-g -O0 -fno-exceptions -fno-rtti -fno-omit-frame-pointer -fno-inline)
  
  echo "🛠️  Compiling harness: $SRC -> $HARNESS_BC"
  "$CLANG" -emit-llvm -c "${CXXFLAGS[@]}" "${INCLUDES[@]}" "$SRC" -o "$HARNESS_BC" 2>> clang.err
  [[ -f "$HARNESS_BC" ]] || { echo "❌ Expected $HARNESS_BC but it was not created"; return 1; }



  EXTRA_BCS=()
  if (( ${#EXTRA_SRCS[@]} > 0 )); then
    for f in "${EXTRA_SRCS[@]}"; do
      bc="$PWD/$(basename "$f" .cc).bc"
      echo "🛠️  Compiling extra: $f"
      "$CLANG" -emit-llvm -c "${CXXFLAGS[@]}" "${INCLUDES[@]}" "$f" -o "$bc" 2>> clang.err
      EXTRA_BCS+=("$bc")
    done
  fi
}

link_all() {
  echo "🔗 Linking bitcode → $OUT"
  "$LLVMLINK" "$HARNESS_BC" "${EXTRA_BCS[@]}" -o "$OUT"
}

# === Main compile loop with incremental include discovery ===
while (( round <= MAX_ROUNDS )); do
  echo -e "\n=== ROUND $round / $MAX_ROUNDS ====================================="

  if compile_all; then
    echo "✅ Compilation succeeded."
    link_all
    echo "🎉 Done. Bitcode ready at: $OUT"
    rm -f clang.err
    exit 0
  fi

  echo -e "\n❌ Compilation failed."
  echo "------ clang.err (last 30 lines) ------"
  tail -n 30 clang.err || true
  echo "---------------------------------------"

  # Detect the first missing header
  missing=$(grep -m1 -E "fatal error: '.*' file not found" clang.err | sed -E "s/.*fatal error: '([^']+)'.*/\1/")
  if [[ -z "$missing" ]]; then
    echo "😬 No \"file not found\" header detected. The error may be unrelated to includes."
    echo "📄 Full clang.err is available for inspection."
    return 1
  fi

  echo "📦 Missing header detected: $missing"
  echo "🔍 Searching for header path..."

  if [[ -z "$full_path" ]]; then
    echo "❌ Could not locate header: $missing"
    echo "🧾 See clang.err for details."
    return 1
  fi

  echo "✅ Found: $full_path"

  # Compute directory to add to -I (strip the relative tail after the missing pattern)
  rel_prefix=$(dirname "$missing")
  escaped_rel=$(echo "$rel_prefix" | sed 's@/@\\/@g')
  include_path=$(echo "$full_path" | sed -E "s@(.*)/$escaped_rel/.*@\1@")
  real_dir=$(realpath "$include_path")

  # Avoid duplicates
  already=false
  for inc in "${INCLUDES[@]}"; do
    # strip '-I'
    inc_dir="${inc#-I}"
    if [[ -n "$inc_dir" ]] && [[ "$(readlink -f "$inc_dir")" == "$real_dir" ]]; then
      already=true; break
    fi
  done

  if ! $already; then
    echo "➕ Adding include: -I$real_dir   (for $missing)"
    INCLUDES+=("-I$real_dir")
  else
    echo "⚠️  Include already present: $real_dir"
    echo "🧪 The error may require additional sources (EXTRA_SRCS) rather than headers."
  fi

  (( round++ ))
done

echo "❌ Reached $MAX_ROUNDS attempts without successful compilation."
echo "🧾 See clang.err for the full diagnostics."
return 1