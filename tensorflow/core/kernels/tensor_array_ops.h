#ifndef TENSOR_ARRAY_OPS
#define TENSOR_ARRAY_OPS
#include "tensorflow/core/platform/status.h"
#include "string_stub.h"
#include "datatype_stub.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/core/kernels/tensor_array.h"

namespace tensorflow{
Status GetTensorArray(OpKernelContext* ctx, TensorArray** tensor_array);
}

#endif
