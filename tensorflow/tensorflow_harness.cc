#include "tensorflow/compiler/tf2xla/kernels/tensor_list_ops_stub.h"
#include "tensorflow/compiler/xla/client/xla_builder.h"
#include "tensorflow/compiler/tf2xla/xla_op_kernel.h"
#include "tensorflow/core/framework/tensor_shape.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/compiler/xla/span_stub.h"
#include "klee/klee.h"

using tensorflow::TensorValue;
using tensorflow::Tensor;
int main() {
    xla::XlaBuilder b("tensor_list_split_harness");
    int64_t arr[] = {1, 2, 3, 4, 5};


    // Create an ArraySlice from the array
    tensorflow::gtl::ArraySlice<int64_t> slice(arr);
    tensorflow::TensorShape tshape;
    tensorflow::TensorShape::BuildTensorShape(slice, &tshape);
    tensorflow::Tensor input_tensor(tensorflow::DT_INT32,
                                  tshape);
    

    tensorflow::Tensor t0=Tensor();

    std::vector<TensorValue> input_values;
    input_values.push_back(TensorValue(&t0));

    absl::Span<const TensorValue> input_=input_values;
    tensorflow::Params params_;
    params_.inputs = input_;          // point to backing storage
     tensorflow::OpKernelContext ctx(&params_);
    tensorflow::XlaOpKernelContext xctx(&ctx);
    tensorflow::TensorListSplitOp op;
    op.Compile(&xctx);   
}