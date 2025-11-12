#ifndef TENSORFLOW_LITE_KERNEL_CONV
#define TENSORFLOW_LITE_KERNEL_CONV

#include <stdlib.h>
#include <vector>
#include "tensorflow/lite/c/c_api_types.h"
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/c/builtin_op_data.h"
#include "klee/klee.h"

const int kTensorNotAllocated = -1;

#define TF_LITE_ENSURE_OK(context, status) \
  do {                                     \
    const TfLiteStatus s = (status);       \
    if ((s) != kTfLiteOk) {                \
      return s;                            \
    }                                      \
  } while (0) 


enum KernelType {
  kReference,
  kGenericOptimized,  // Neon-free
  // kMultithreadOptimized is a mixture of an Eigen-based kernel when threads
  // are available and kGenericOptimized when we must use only one thread.
  kMultithreadOptimized,
  // The kernel uses use CBLAS interface for matrix multiplication.
  // It's fast when an optimized CBLAS implementation is available (e.g. Apple
  // Accelerate Framework), and it's slow when falling back to naive
  // implementation.
  kCblasOptimized,
};

struct OpData {
  // IDs are the arbitrary identifiers used by TF Lite to identify and access
  // memory buffers.
  int im2col_id = kTensorNotAllocated;
  int hwcn_weights_id = kTensorNotAllocated;
  int input_quantized_id = kTensorNotAllocated;
  int scaling_factors_id = kTensorNotAllocated;
  int input_offset_id = kTensorNotAllocated;
  int accum_scratch_id = kTensorNotAllocated;
  // Row sums are used to cache filter sums for hybrid zero-point calculations.
  int row_sums_id = kTensorNotAllocated;

  TfLitePaddingValues padding;
  // The scaling factor from input to output (aka the 'real multiplier') can
  // be represented as a fixed point multiplier plus a left shift.
  int32_t output_multiplier;
  int output_shift;

  // Per channel output multiplier and shift.
  std::vector<int32_t> per_channel_output_multiplier;
  std::vector<int> per_channel_output_shift;

  // The range of the fused activation layer. For example for kNone and
  // uint8_t these would be 0 and 255.
  int32_t output_activation_min;
  int32_t output_activation_max;
  // Indexes are the offset to the memory buffer in the array used to keep track
  // of the allocated temporaries.
  int32_t im2col_index;
  int32_t hwcn_weights_index;
  int32_t input_quantized_index;
  int32_t scaling_factors_index;
  int32_t accum_scratch_index;
  int32_t input_offset_index;
  int32_t row_sums_index;

  bool need_hwcn_weights = false;
  bool have_weights_been_transposed = false;
  bool need_im2col = false;
  // If it's true, it means im2col is needed but gets disabled because the
  // temporary im2col tensor requires too much memory (i.e.
  // >= kMaxIm2colBufferSize);
  bool im2col_oversized = false;

  bool supports_multithreaded_kernel = false;
  bool is_hybrid_per_channel = false;
  bool compute_hybrid_row_sums = true;

  // Number of convolution groups.
  int32_t groups = 1;
};

TfLiteStatus GetInputSafe(const TfLiteContext* context, const TfLiteNode* node,
                          int index, const TfLiteTensor** tensor) {
  int tensor_index;
  const int* tensor_indices=node->inputs->data;
  int max_size=node->inputs->size;
  (tensor_index) = tensor_indices[index];
  *tensor = &context->tensors[tensor_index];
  return kTfLiteOk;
}

TfLiteStatus Prepare( KernelType kernel_type, TfLiteContext* context,
                     TfLiteNode* node ) {
   auto params = reinterpret_cast<TfLiteConvParams*>(node->builtin_data);
  OpData* data = reinterpret_cast<OpData*>(node->user_data);

  bool has_bias = node->inputs->size == 3;
  // Check number of inputs/outputs
/*  TF_LITE_ENSURE(context, has_bias || node->inputs->size == 2);
  TF_LITE_ENSURE_EQ(context, node->outputs->size, 1); */
  TfLiteTensor* output;
/*TF_LITE_ENSURE_OK(context, GetOutputSafe(context, node, 0, &output)); */
  const TfLiteTensor* input;
   TF_LITE_ENSURE_OK(context, GetInputSafe(context, node, 0, &input)); 
  const TfLiteTensor* filter;
  /* TF_LITE_ENSURE_OK(context, GetInputSafe(context, node, 1, &filter)); */

  // Check dimensionality of input, filter
  /* TF_LITE_ENSURE_EQ(context, input->dims->size, 4);
  TF_LITE_ENSURE_EQ(context, filter->dims->size, 4); */
  // Check input channels matching filter
  // Filter input channel can be a factor of channels of input (grouped conv)
  // or equals (normal conv).
  //auto input_channel = input->dims->data[3];
  //auto filter_input_channel = filter->dims->data[3];
  int input_channel=1, filter_input_channel;
  klee_make_symbolic(&filter_input_channel, sizeof (filter_input_channel), "filter_input_channel");
/*  TF_LITE_ENSURE_EQ(context, input_channel % filter_input_channel, 0);*/
  data->groups = input_channel / filter_input_channel; 
  return kTfLiteOk;
}


#endif  // TENSORFLOW_LITE_KERNEL_CONV