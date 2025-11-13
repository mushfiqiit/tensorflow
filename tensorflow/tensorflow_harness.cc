#include "tensorflow/core/kernels/composite_tensor_ops.h"
#include <cstring>      // std::memset
#include <cstdlib>      // malloc, free
#include <new>          // placement new (optional)
#include <klee/klee.h>

using tensorflow::OpKernelContext;
using tensorflow::TensorValue;
using tensorflow::Tensor;

int main() {
    int64_t arr[] = {1, 2, 3, 4, 5};


    // Create an ArraySlice from the array
    tensorflow::gtl::ArraySlice<int64_t> slice(arr);
    tensorflow::TensorShape tshape;
    tensorflow::TensorShape::BuildTensorShape(slice, &tshape);
    tensorflow::Tensor input_tensor(tensorflow::DT_INT32,
                                  tshape);

    tensorflow::Tensor t0=Tensor();

    std::vector<TensorValue> input_values;
    input_values.push_back(TensorValue(&input_tensor));

    absl::Span<const TensorValue> input_=input_values;
    tensorflow::Params params_;
    params_.inputs = input_;  
    tensorflow::OpKernelContext ctx(&params_);
    tensorflow::CompositeTensorVariantToComponents ctvtc;
    ctvtc.Compute(&ctx);

}