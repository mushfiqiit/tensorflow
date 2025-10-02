#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include <cstdint>
#include "klee/klee.h"

int main() {
  tensorflow::TensorShape tensor_shape;

  const int64_t limit = 0;
  const int64_t num_elts = 2;              // >0 to allow deref
  const size_t  num_bytes = num_elts * sizeof(char);

  // 1) Real storage on the stack
  char storage[num_elts];                          // num_bytes == 1 with num_elts==1

  // 2) Symbolic contents
  klee_make_symbolic(storage, num_bytes, "data_buf_bytes");

  // 3) Symbolic pointer
  char* data_ptr=&storage[0];
  klee_make_symbolic(&data_ptr, sizeof(data_ptr), "data_ptr");

  //4) Constrain pointer to { nullptr, &storage[0] }
  //klee_assume(data_ptr == nullptr || data_ptr == &storage[0]);

  const bool print_v2 = true;
  volatile auto s = tensorflow::SummarizeArray<bool>(
      limit, num_elts, tensor_shape, /*data=*/data_ptr, print_v2);
  (void)s;
  return 0;
}
