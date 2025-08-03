#!/usr/bin/env bash

# Run this script from the root of your TensorFlow repository
set -e

TARGET="//tensorflow/c:tf_tensor"
OUT_DIR="$PWD/tf_tensor_deps"
SRC_DIR="$OUT_DIR/src"
mkdir -p "$OUT_DIR"

echo "🔍 Querying source dependencies of $TARGET ..."

# Query all .cc source files in the transitive closure of tf_tensor
bazel query "kind('source file', deps($TARGET))" | grep '\.cc$' > "$OUT_DIR/bazel_paths.txt"

# Convert Bazel labels (e.g. //tensorflow/c:foo.cc) to file paths (e.g. tensorflow/c/foo.cc)
sed -E 's#^//##; s#:#/#' "$OUT_DIR/bazel_paths.txt" > "$OUT_DIR/sources.txt"

echo "✅ Found $(wc -l < "$OUT_DIR/sources.txt") source files"

echo "📁 Copying source files to: $SRC_DIR"
mkdir -p "$SRC_DIR"

TENSORFLOW_ROOT="$PWD"

while read -r rel_path; do
  full_path="$TENSORFLOW_ROOT/$rel_path"
  dest_dir="$SRC_DIR/$(dirname "$rel_path")"
  mkdir -p "$dest_dir"

  if [[ -f "$full_path" ]]; then
    cp "$full_path" "$dest_dir/"
  else
    echo "⚠️  Warning: file not found: $full_path"
  fi
done < "$OUT_DIR/sources.txt"

echo "🧾 All source files have been copied to $SRC_DIR"
