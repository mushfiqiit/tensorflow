#include "tensorflow/core/kernels/tensor_array_ops.h"
#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/core/kernels/tensor_array.h"
#include "tensorflow/core/framework/tensor.h"

#include <cstring>      // std::memset
#include <cstdlib>      // malloc, free
#include <new>          // placement new (optional)
#include <klee/klee.h>

using tensorflow::OpKernelContext;
using tensorflow::TensorValue;
using tensorflow::ScopedStepContainer;

int main() {
  // --- Build minimal Params on the KLEE heap so make_symbolic is safe ---
  auto *params = static_cast<OpKernelContext::Params*>(
      malloc(sizeof(OpKernelContext::Params)));
  // Zero it to keep any padding deterministic
  std::memset(params, 0, sizeof(*params));

  // Inputs span: keep the backing array alive on the stack (fine)
  TensorValue inputs_buf[2] = { TensorValue(), TensorValue() };
  params->inputs = absl::Span<const TensorValue>(inputs_buf, 2);

  // Real container we may point to
  tensorflow::ScopedStepContainer sc = tensorflow::ScopedStepContainer();

  // Make a standalone pointer variable symbolic (KLEE is happy with stack slots)
  tensorflow::ScopedStepContainer* step_ptr = &sc;
  klee_make_symbolic(&step_ptr, sizeof(step_ptr), "step_container");
  klee_assume(step_ptr == nullptr || step_ptr == &sc);

  // Store the (symbolic) pointer into the params field
  params->step_container = step_ptr;


  // Build the OpKernelContext by value from *params
  OpKernelContext ctx(*params);

  //klee_assert(ctx.step_container() == nullptr);

  // Call site: pass the address of a valid local pointer
  tensorflow::TensorArray *ta = nullptr;
  auto status = GetTensorArray(&ctx, &ta);

  // Keep things live
  (void)status; (void)ta;

  // Do NOT free raw_sc/params in the KLEE-run; leaving them live is fine.
  return 0;
}
