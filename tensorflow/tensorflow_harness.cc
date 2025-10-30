
#include "tensorflow/core/kernels/searchsorted_op.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/datatype_stub.h"
#include <cstring>
#include <klee/klee.h>

using tensorflow::OpKernelContext;
using tensorflow::TensorValue;
using tensorflow::TensorShape;
using tensorflow::Tensor;

struct CPUDevice {};

// Helper to set both dims and num_elements consistently in your stub shape
static inline TensorShape MakeShape(int d0, int d1) {
  TensorShape s;
  // Your TensorShapeBase::dims() / dim_size() are currently hardcoded.
  // If you can’t change the header, avoid relying on them and just ensure
  // NumElements is correct.
  const long long num = 1LL * d0 * d1;
  s.set_num_elements(num);
  return s;
}

int main() {
  OpKernelContext::Params params{}; 

  // Use a consistent logical shape: sorted_inputs [2,3], values [2,1]
  TensorShape si_shape = MakeShape(2, 3);
  TensorShape v_shape  = MakeShape(2, 1);

   Tensor sorted_inputs(tensorflow::DT_INT32, si_shape);
  Tensor values       (tensorflow::DT_INT32, v_shape);

  // Ensure the *flat views* have backing storage of the right size.
  // (Your FlatView allocates owning buffers sized by NumElements).
  
    auto si = flat<int>(&sorted_inputs);   // owning buffer of size 6
    for (std::size_t i = 0; i < si.size(); ++i) si[i] = (int)i; // init
  
  
  /*   auto vv = flat<int>(&values);          // owning buffer of size 2
    vv[0] = 1; vv[1] = 4;                  // any test data
  

  TensorValue inputs_buf[2] = { TensorValue(&sorted_inputs), TensorValue(&values) };
  params.inputs = absl::Span<const TensorValue>(inputs_buf, 2);

  OpKernelContext ctx(&params); 

  tensorflow::UpperBoundOp<CPUDevice, int, int> op{};
  op.Compute(&ctx);
  return 0; */
}
