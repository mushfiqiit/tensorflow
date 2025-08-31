// klee_tensor_harness.c
#include "tensorflow/c/tf_tensor.h"
#include "klee/klee.h"
#include <assert.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

// Needed for klee_assert to compile correctly
extern "C" void __assert_fail(const char *assertion, const char *file,
                              unsigned int line, const char *function);

static void dummy_deallocator(void* data, size_t len, void* arg) { (void)data; (void)len; (void)arg; }

int main(void) {
  // ----- Make shape symbolic (two dims in a small range) -----
  int64_t dims[2];
  klee_make_symbolic(dims, sizeof(dims), "dims");
  // Constrain to a small space so path count is big but finite
  klee_assume(dims[0] >= 0 && dims[0] <= 3);
  klee_assume(dims[1] >= 0 && dims[1] <= 3);

  // ----- Make dtype symbolic but restricted to safe ones -----
  TF_DataType dtype;
  klee_make_symbolic(&dtype, sizeof(dtype), "dtype");
  // Keep this in the memcpy-safe, non-string/resource set to avoid TF internals we stubbed out
  klee_assume(dtype == TF_FLOAT   ||
              dtype == TF_DOUBLE  ||
              dtype == TF_INT32   ||
              dtype == TF_UINT8   ||
              dtype == TF_INT16   ||
              dtype == TF_INT8    ||
              dtype == TF_INT64   ||
              dtype == TF_BOOL);

  // ----- Make len symbolic and allow both sufficient and insufficient cases -----
  size_t len;
  klee_make_symbolic(&len, sizeof(len), "len");
  // Cap len to a reasonable range
  klee_assume(len <= 128);

  // ----- Allocate data with extra headroom and choose a symbolic misalignment -----
  // This steers the "copy vs no-copy" branch in TF_NewTensor:
  // it copies only if dtype memcpy-able && pointer is NOT properly aligned.
  // We'll model (mis)alignment via an adjustable offset.
  unsigned char *base = (unsigned char*)malloc(128 + 64);
  klee_assume(base != NULL);
  unsigned offset;
  klee_make_symbolic(&offset, sizeof(offset), "offset");
  // Try both aligned and misaligned offsets (assume EIGEN_MAX_ALIGN_BYTES = 32/64… using mod 32 here)
  klee_assume(offset < 32);
  void *data = base + offset;

  // Also make first few bytes symbolic to create extra data-dependent branches (optional)
  if (len > 0) {
    size_t sym = len < 16 ? len : 16;
    klee_make_symbolic(data, sym, "payload_prefix");
  }

  // ----- Call under test -----
  TF_Tensor *t = TF_NewTensor(dtype, dims, /*num_dims=*/2, data, len,
                              dummy_deallocator, NULL);

  // ----- Explore both success and failure paths -----
  if (t == NULL) {
    // We expect NULL when len is too small for dtype * num_elements
    // Force a couple of splits depending on shape to ensure solver uses shape too
    if ((dims[0] == 0) || (dims[1] == 0)) {
      klee_assert(1);   // zero-sized shapes can be valid but often produce len==0 requirement
    } else {
      klee_assert(1);   // non-zero shape with too-small len hits this path
    }
    // No further use of t (avoid virtual calls into unimplemented parts)
    return 0;
  }

  // From here on, t != NULL.
  // DO NOT call TF_* APIs that route into TensorInterface virtuals you haven't implemented.
  // Keep branching on conditions we control: dtype/alignment/len/dims.

  // Branch on whether we ended up in the "copy" path vs "no-copy" path.
  // Heuristic: if offset%32 != 0 and dtype is memcpy-able, TF_NewTensor copied
  // and invoked deallocator; otherwise it kept the original buffer.
  // We can't observe that directly without deeper hooks, but we can still split paths.
  if ((offset % 32) != 0) {
    // Misaligned input → likely copy branch
    klee_assert(1);
  } else {
    klee_assert(1);
  }

  // Add a couple more data-dependent splits without touching TF internals:
  // read a byte and fork
  if (len > 0) {
    unsigned char b0 = *((unsigned char*)data);
    if (b0 & 1) klee_assert(1); else klee_assert(1);
  }

  // Clean up – DO NOT call functions that access t->tensor virtuals
  TF_DeleteTensor(t);
  free(base);
  return 0;
}
