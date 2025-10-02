#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include <cstdint>
#include <memory>
#include "klee/klee.h"

int main() {
  tensorflow::TensorShape tensor_shape;

  const int64_t limit = 0;
  const int64_t num_elts = 1;  // ensure potential deref
  const size_t  num_bytes = static_cast<size_t>(num_elts) * sizeof(bool);

  // Concrete, valid allocation to model the "non-null" case
  std::unique_ptr<char[]> buf_owner(new char[num_bytes]);
  char* concrete_buf = buf_owner.get();

  // Symbolic contents (not required for the null test, but useful)
  klee_make_symbolic(concrete_buf, num_bytes, "data_buf_bytes");

  // Make the POINTER we pass to SummarizeArray symbolic
  char* data_ptr;
  klee_make_symbolic(&data_ptr, sizeof(data_ptr), "data_ptr");

  // Constrain it to either be NULL or exactly the allocated buffer
  // (no branching, this is a pure constraint for KLEE to explore)
  klee_assume(data_ptr == nullptr || data_ptr == concrete_buf);

  const bool print_v2 = true;

  // Pass the (possibly-null) symbolic pointer
  volatile auto s = tensorflow::SummarizeArray<bool>(
      limit, num_elts, tensor_shape, /*data=*/data_ptr, print_v2);
  (void)s;

  return 0;
}
