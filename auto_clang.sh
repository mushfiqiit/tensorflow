#!/usr/bin/env bash

CLANG=$HOME/tools/llvm-project/build/bin/clang++
LINK=$HOME/tools/llvm-project/build/bin/llvm-link

MAX_ROUNDS=25

SRC=$1
[[ -z $SRC ]] && { echo "Usage: $0 <source.cc> [output.bc]"; exit 1; }

SRC=$(realpath "$SRC")
OUT=${2:-"$PWD/$(basename "$SRC" .cc).bc"}
ROOT=${PROJECT_ROOT:-$PWD}

echo "📄 Bitcode will be output to: $OUT"

# Core includes
INCLUDES=(-I"$ROOT" -I"$ROOT/tensorflow")

# Preloaded includes
PRELOAD_INCLUDES=(
  "$ROOT/tensorflow/core"
  "$ROOT/tensorflow/tsl"
  "$ROOT/tensorflow/tsl/c"
  "$ROOT/third_party/eigen3"
  "$ROOT/third_party"
  "$ROOT/third_party/xla"
  "$ROOT/third_party/xla/xla"
  "$ROOT/third_party/xla/xla/tsl"
  "$ROOT/third_party/xla/third_party/tsl"
  "$ROOT/third_party/absl"
  "$ROOT/bazel-bin/external/com_google_absl"
)

for path in "${PRELOAD_INCLUDES[@]}"; do
  INCLUDES+=("-I$path")
done

# Bazel output paths for generated .pb.h files
BAZEL_BIN="$HOME/.cache/bazel/_bazel_$(whoami)/execroot/org_tensorflow/bazel-out/k8-opt/bin"
INCLUDES+=("-I$BAZEL_BIN")
INCLUDES+=("-I$BAZEL_BIN/tensorflow")
INCLUDES+=("-I$BAZEL_BIN/tensorflow/core")
INCLUDES+=("-I$BAZEL_BIN/tensorflow/core/framework")
INCLUDES+=("-I$BAZEL_BIN/xla")
INCLUDES+=("-I$BAZEL_BIN/xla/tsl")
INCLUDES+=("-I$BAZEL_BIN/xla/tsl/protobuf")

# Shim include if exists
SHIM_PATH="$PWD/klee_shims.h"
if [[ -f "$SHIM_PATH" ]]; then
  echo "🧩 Adding shim for __assert_fail"
  INCLUDES+=("-include" "$SHIM_PATH")
fi

# Add KLEE include path if found
KLEE_HEADER="$HOME/tools/klee/include/klee/klee.h"
if [[ -f "$KLEE_HEADER" ]]; then
  KLEE_INCLUDE_DIR=$(dirname "$KLEE_HEADER")
  KLEE_PARENT=$(dirname "$KLEE_INCLUDE_DIR")
  echo "🧠 Found klee.h, adding include: -I$KLEE_PARENT"
  INCLUDES+=("-I$KLEE_PARENT")
else
  echo "⚠️  klee/klee.h not found in ~/.local/include — may cause errors later."
fi

CFLAGS=(-std=c++17 -DKLEE)
round=0

LIBDIR="$HOME/.cache/bazel/_bazel_mushfiqur/91253ec3e2fa4095808f37d0d7a190fc/external/com_google_protobuf/build"
LIBS=(-L"$LIBDIR" -lprotobuf)

HARNESS_BC="$PWD/harness.bc"
IMPL_BC="$PWD/tf_tensor.bc"

TENSOR_CC="$ROOT/tensorflow/core/framework/tensor.cc"
TENSOR_BC="$PWD/tensor.bc"

while (( round < MAX_ROUNDS )); do
  echo -e "\n=== ROUND $round =========================================="

  echo "🛠️ Compiling tf_tensor.cc"
  $CLANG -emit-llvm -c "${CFLAGS[@]}" "${INCLUDES[@]}" "$ROOT/tensorflow/c/tf_tensor.cc" -o "$IMPL_BC" 2> clang.err
  status1=$?

  echo "🛠️ Compiling $SRC"
  $CLANG -emit-llvm -c "${CFLAGS[@]}" "${INCLUDES[@]}" "$SRC" -o "$HARNESS_BC" 2>> clang.err
  status2=$?

  echo "🛠️ Compiling tensor.cc (provides TensorBuffer vtable/typeinfo)"
  $CLANG -emit-llvm -c "${CFLAGS[@]}" "${INCLUDES[@]}" "$TENSOR_CC" -o "$TENSOR_BC" 2>> clang.err
  status3=$?

  if (( status1 == 0 && status2 == 0 && status3==0)); then
    echo "🔗 Linking $HARNESS_BC + $IMPL_BC + $TENSOR_BC"
    $LINK "$HARNESS_BC" "$IMPL_BC" "$TENSOR_BC" -o "$OUT"
    echo "✅ Success! Bitcode written to $OUT"
    rm -f clang.err
    exit 0
  fi

  echo -e "\n❌ Compilation failed.
------ clang.err (last 10 lines) ------"
  tail -n 10 clang.err
  echo "---------------------------------------"

  missing=$(grep -m1 "fatal error: '.*' file not found" clang.err | sed -E "s/.*fatal error: '([^']+)'.*/\1/")

  if [[ -z $missing ]]; then
    echo "❌ No missing header found. Full error might be unrelated to includes."
    exit 1
  fi

  echo "📦 Missing header detected: $missing"
  echo "🔍 Searching for header file path..."

  # Avoid external/protobuf headers due to Protobuf runtime mismatch
  full_path=$(find "$ROOT" -type f -path "*/$missing" | head -n1)
  if [[ -z $full_path ]]; then
    full_path=$(find "$HOME/.cache/bazel/_bazel_$(whoami)" -type f -path "*/$missing" ! -path "*/external/protobuf/*" | head -n1)
  fi
  if [[ -z $full_path ]]; then
    full_path=$(find "$ROOT/bazel-bin/external" -type f -path "*/$missing" | head -n1)
  fi
  if [[ -z $full_path ]]; then
    echo "❌ Header $missing not found anywhere."
    exit 1
  fi

  echo "✅ Using header: $full_path"

  rel_prefix=$(dirname "$missing")
  escaped_rel=$(echo "$rel_prefix" | sed 's@/@\\/@g')
  include_path=$(echo "$full_path" | sed -E "s@(.*)/$escaped_rel/.*@\1@")
  real_dir=$(realpath "$include_path")

  already_included=false
  for inc in "${INCLUDES[@]}"; do
    if [[ "$(readlink -f "$inc")" == "$(readlink -f "$real_dir")" ]]; then
      already_included=true
      break
    fi
  done

  if ! $already_included; then
    echo "➕ Adding -I$real_dir   (for $missing)"
    INCLUDES+=("-I$real_dir")
  else
    echo "⚠️  Skipping duplicate include path: $real_dir"
  fi

  (( round++ ))
done

echo "❌ Reached $MAX_ROUNDS attempts without successful compilation."
exit 1
