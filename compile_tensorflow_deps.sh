#!/usr/bin/env bash

set -e

CLANG=$HOME/tools/llvm-project/build/bin/clang++
SRC_DIR="$PWD/tf_tensor_deps/src"
BC_DIR="$PWD/tf_tensor_deps/bc"
mkdir -p "$BC_DIR"

# Basic flags
CFLAGS=(-std=c++17 -DKLEE)

# Includes
INCLUDES=(-I"$PWD" -I"$PWD/tensorflow")

# Add common TensorFlow include paths
PRELOAD_INCLUDES=(
  "tensorflow/core"
  "tensorflow/tsl"
  "tensorflow/tsl/c"
  "third_party"
  "third_party/eigen3"
  "third_party/xla"
  "third_party/xla/xla"
  "third_party/xla/xla/tsl"
  "third_party/xla/third_party/tsl"
  "third_party/absl"
)
for path in "${PRELOAD_INCLUDES[@]}"; do
  INCLUDES+=("-I$PWD/$path")
done

# Bazel-generated proto headers
BAZEL_BIN="$HOME/.cache/bazel/_bazel_$(whoami)/execroot/org_tensorflow/bazel-out/k8-opt/bin"
INCLUDES+=("-I$BAZEL_BIN")
INCLUDES+=("-I$BAZEL_BIN/tensorflow")
INCLUDES+=("-I$BAZEL_BIN/tensorflow/core/framework")

# Optional: KLEE include
KLEE_INCLUDE="$HOME/tools/klee/include"
if [[ -d "$KLEE_INCLUDE" ]]; then
  INCLUDES+=("-I$KLEE_INCLUDE")
fi

echo "📁 Compiling .cc files from $SRC_DIR to $BC_DIR"

find "$SRC_DIR" -name '*.cc' | while read -r cc_file; do
  rel_path="${cc_file#$SRC_DIR/}"
  out_path="$BC_DIR/${rel_path%.cc}.bc"
  out_dir=$(dirname "$out_path")
  mkdir -p "$out_dir"

  echo "🛠️  Compiling $rel_path"
  $CLANG -emit-llvm -c "${CFLAGS[@]}" "${INCLUDES[@]}" "$cc_file" -o "$out_path" 2> /dev/null || {
    echo "⚠️  Failed to compile: $rel_path"
  }
done

echo "✅ Finished compiling .cc files to $BC_DIR"
