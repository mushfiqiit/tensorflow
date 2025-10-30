/* Copyright 2018 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef TENSORFLOW_CORE_KERNELS_SEARCHSORTED_OP_H_
#define TENSORFLOW_CORE_KERNELS_SEARCHSORTED_OP_H_

/*
#include "third_party/eigen3/unsupported/Eigen/CXX11/Tensor"
*/
#include "tensorflow/core/framework/op_kernel.h"
/*
#include "tensorflow/core/framework/tensor_types.h"
#include "tensorflow/core/framework/types.h"
#include "tensorflow/core/lib/core/errors.h"
*/
#include <limits>
#include "tensorflow/core/framework/op_requires.h"
#include "tensor_flat_stub.h"
/*
#include "tensorflow/core/framework/bounds_check.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/core/framework/register_types.h"
#include "tensorflow/core/framework/tensor.h"
#include "tensorflow/core/framework/tensor_shape.h"
*/
#include "tensorflow/core/kernels/fill_functor.h"
/*
#include "tensorflow/core/lib/core/bits.h"
#include "tensorflow/core/platform/logging.h"
#include "tensorflow/core/platform/threadpool.h"
#include "tensorflow/core/platform/types.h"
*/
#include "tensorflow/tsl/platform/status.h"
//#include "error_stub.h"
namespace tensorflow {

template <typename Device, typename T, typename OutType> 
 class UpperBoundOp : public OpKernel {
 public:
 UpperBoundOp() {} 
  //explicit UpperBoundOp(OpKernelConstruction* ctx) : OpKernel(ctx) {}

  void Compute(OpKernelContext* ctx) {
    const Tensor& sorted_inputs_t = ctx->input(0);
    const Tensor& values_t = ctx->input(1);

    // inputs must be at least a matrix
    /* OP_REQUIRES(
        ctx, sorted_inputs_t.shape().dims() >= 2,
        errors::InvalidArgument("sorted input argument must be a matrix")
      ); */

    if (!(sorted_inputs_t.shape().dims() >= 2)) {
  CheckNotInComputeAsync(ctx, "OP_REQUIRES_ASYNC");
  ctx->CtxFailure(__FILE__, __LINE__,
      Status());
  return;
}


    // must have same batch dim_size for both
    /* OP_REQUIRES(ctx, sorted_inputs_t.dim_size(0) == values_t.dim_size(0),
                 Status(error::INVALID_ARGUMENT,
                       "Leading dim_size of both tensors must match.") 
                      Status()); */

  if (!(sorted_inputs_t.dim_size(0) == values_t.dim_size(0))) {
  CheckNotInComputeAsync(ctx, "OP_REQUIRES_ASYNC");
  ctx->CtxFailure(__FILE__, __LINE__,
      Status(/* error::INVALID_ARGUMENT,
             "Leading dim_size of both tensors must match." */));
  return;
}


/*     // this is required because we do indexing in int32 on the GPU
    OP_REQUIRES(ctx, values_t.NumElements() < std::numeric_limits<int>::max(),
                 Status(error::INVALID_ARGUMENT,
                       "values tensor size must less than INT_MAX") 
                      Status()); */

    if (!(values_t.NumElements() < std::numeric_limits<int>::max())) {
  CheckNotInComputeAsync(ctx, "OP_REQUIRES_ASYNC");
  ctx->CtxFailure(__FILE__, __LINE__,
      Status(/* error::INVALID_ARGUMENT,
             "values tensor size must less than INT_MAX" */));
  return;
}


    Tensor* output_t;
/*
    OP_REQUIRES_OK(ctx, ctx->allocate_output(0, values_t.shape(), &output_t));

    if (output_t->dtype() == DT_INT32) {
      OP_REQUIRES(ctx,
                  FastBoundsCheck(sorted_inputs_t.dim_size(1),
                                  std::numeric_limits<int>::max()),
                  errors::InvalidArgument("trailing dim_size must less than "
                                          "INT_MAX for int32 output type, was ",
                                          sorted_inputs_t.dim_size(1)));
    }

    auto output = output_t->template flat<OutType>();
    const auto sorted_inputs = sorted_inputs_t.template flat<T>();
    const auto values = values_t.template flat<T>();

    #include "tensor_flat_stub.h"
*/
// Writable output flat view
auto output = flat<OutType>(output_t);

// Read-only input flat views
auto sorted_inputs = flat<T>(sorted_inputs_t);
auto values        = flat<T>(values_t);


    // For empty inputs, all values will be placed at the zeroth position.
    if (sorted_inputs.size() == 0) {
       functor::SetZeroFunctor<Device, OutType> set_zero;
        set_zero(ctx->eigen_device<Device>(), output);
        return; 
    }
/*
    OP_REQUIRES_OK(
        ctx, functor::UpperBoundFunctor<Device, T, OutType>::Compute(
                 ctx, sorted_inputs, values, sorted_inputs_t.dim_size(0),
                 sorted_inputs_t.dim_size(1), values_t.dim_size(1), &output));
   */              
  } 

};

/* template <typename Device, typename T, typename OutType> 
class UpperBoundOp : public OpKernel {
 public:
  explicit UpperBoundOp(OpKernelConstruction* ctx = nullptr);
  void Compute(OpKernelContext* ctx) override;
}; */

namespace functor {

/* template <typename Device, typename T, typename OutType>
struct UpperBoundFunctor {
  // Searches for values in sorted_inputs and returns the greatest possible
  // index where they maintain sorted order.
  static Status Compute(OpKernelContext* context,
                        const typename TTypes<T, 1>::ConstTensor& sorted_inputs,
                        const typename TTypes<T, 1>::ConstTensor& values,
                        int batch_size, int num_inputs, int num_values,
                        typename TTypes<OutType, 1>::Tensor* output);
};

template <typename Device, typename T, typename OutType>
struct LowerBoundFunctor {
  // Searches for values in sorted_inputs and returns the lowest possible
  // index where they maintain sorted order.
  static Status Compute(OpKernelContext* context,
                        const typename TTypes<T, 1>::ConstTensor& sorted_inputs,
                        const typename TTypes<T, 1>::ConstTensor& values,
                        int batch_size, int num_inputs, int num_values,
                        typename TTypes<OutType, 1>::Tensor* output);
}; */
}  // namespace functor

}  // end namespace tensorflow
#endif  // TENSORFLOW_CORE_KERNELS_SEARCHSORTED_OP_H_
