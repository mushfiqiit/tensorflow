#include "tensorflow/core/kernels/searchsorted_op.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/datatype_stub.h"
#include <cstring>      // std::memset
#include <cstdlib>      // malloc, free
#include <new>          // placement new (optional)
#include <klee/klee.h>

using tensorflow::OpKernelContext;
using tensorflow::TensorValue;
using tensorflow::TensorShape;
using tensorflow::Tensor;
struct CPUDevice {};
int main() {
    OpKernelContext::Params params;
  std::memset(&params, 0, sizeof(params));

  // Declare REAL variables (not functions) and keep them non-const since we mutate them.
  TensorShape si_shape;   // pretend: shape [2,3] → total elements = 6
  si_shape.set_num_elements(6);

  TensorShape v_shape;    // pretend: shape [2,1] → total elements = 2
  v_shape.set_num_elements(2);

  // Pass by REFERENCE (no &): Tensor expects (DataType, const TensorShape&)
  Tensor sorted_inputs(tensorflow::DT_INT32, si_shape);
  Tensor values       (tensorflow::DT_INT32, v_shape);

  // Inputs: OpKernelContext expects an array/vector of TensorValue.
tensorflow::TensorValue input_vals[2] = {
tensorflow::TensorValue(&sorted_inputs),
tensorflow::TensorValue(&values)};

  // IMPORTANT: bind TensorValue to the actual tensors (not default-constructed)
  TensorValue inputs_buf[2] = { TensorValue(&sorted_inputs),
                                TensorValue(&values) };
  params.inputs = absl::Span<const TensorValue>(inputs_buf, 2); 

    OpKernelContext ctx(&params);
    tensorflow::UpperBoundOp<CPUDevice, int, int> op{};
    op.Compute(&ctx);   

}