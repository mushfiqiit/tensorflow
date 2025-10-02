#include "tensorflow/core/kernels/tensor_array_ops.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/core/kernels/tensor_array.h"

int main()
{
    tensorflow::OpKernelContext* ctx;
    tensorflow::TensorArray** tensor_array;
    auto s=GetTensorArray(ctx, tensor_array);
}