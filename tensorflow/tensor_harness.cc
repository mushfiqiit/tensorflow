#include <stdio.h>
//#include <tensorflow/c/c_api.h>
#include <tensorflow/c/eager/c_api.h>
#include "tensorflow/c/tf_status.h"

// No-op deallocator for small stack/static buffers
static void no_op_deallocator(void* data, size_t len, void* arg) {
  (void)data; (void)len; (void)arg;
}

int main() {
  TF_Status* status = TF_NewStatus();
  TFE_ContextOptions* opts = TFE_NewContextOptions();
  TFE_Context* ctx = TFE_NewContext(opts, status);

  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "TFE_NewContext failed: %s\n", TF_Message(status));
    return 1;
  }


  int32_t input_vals[4] = {1,1,1,1};
  int64_t input_dims[1] = {4};

  /* TF_Tensor* input_t = TF_NewTensor(TF_INT32, input_dims, 1,
                                    input_vals, sizeof(input_vals),
                                    &no_op_deallocator, nullptr);

  TFE_TensorHandle* input_h = TFE_NewTensorHandle(input_t, status);
  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "NewTensorHandle(input) failed: %s\n", TF_Message(status));
    return 1;
  } */

  // data = [[False,False,False,False], [False], [False,False,False]]
  uint8_t d0_vals[4] = {0,0,0,0};
  uint8_t d1_vals[1] = {0};
  uint8_t d2_vals[3] = {0,0,0};
  int64_t d0_dims[1] = {4}, d1_dims[1] = {1}, d2_dims[1] = {3};

  return 0;
}












/*
#include <cstdio>
#include <cstdint>
#include <cstring>

#include "tensorflow/c/c_api.h"          // TF_Version, TF_Tensor, TF_Status
#include "tensorflow/c/eager/c_api.h"    // TFE_* eager API

// No-op deallocator for small stack/static buffers
static void no_op_deallocator(void* data, size_t len, void* arg) {
  (void)data; (void)len; (void)arg;
}

int main() {
  // Show we "imported" TF (like tf.__version__)
  std::printf("TF C API version: %s\n", TF_Version());

  // --- Create an eager context (roughly: Python eager runtime ready) ---
  TF_Status* status = TF_NewStatus();
  TFE_ContextOptions* opts = TFE_NewContextOptions();
  TFE_Context* ctx = TFE_NewContext(opts, status);
  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "TFE_NewContext failed: %s\n", TF_Message(status));
    return 1;
  }

  // === Map Python args to concrete tensors/attrs ===
  // input = tf.constant([1,1,1,1], dtype=tf.int32)
  int32_t input_vals[4] = {1,1,1,1};
  int64_t input_dims[1] = {4};
  TF_Tensor* input_t = TF_NewTensor(TF_INT32, input_dims, 1,
                                    input_vals, sizeof(input_vals),
                                    &no_op_deallocator, nullptr);
  TFE_TensorHandle* input_h = TFE_NewTensorHandle(input_t, status);
  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "NewTensorHandle(input) failed: %s\n", TF_Message(status));
    return 1;
  }

  // data = [[False,False,False,False], [False], [False,False,False]]
  uint8_t d0_vals[4] = {0,0,0,0};
  uint8_t d1_vals[1] = {0};
  uint8_t d2_vals[3] = {0,0,0};
  int64_t d0_dims[1] = {4}, d1_dims[1] = {1}, d2_dims[1] = {3};

  TF_Tensor* d0_t = TF_NewTensor(TF_BOOL, d0_dims, 1, d0_vals, sizeof(d0_vals), &no_op_deallocator, nullptr);
  TF_Tensor* d1_t = TF_NewTensor(TF_BOOL, d1_dims, 1, d1_vals, sizeof(d1_vals), &no_op_deallocator, nullptr);
  TF_Tensor* d2_t = TF_NewTensor(TF_BOOL, d2_dims, 1, d2_vals, sizeof(d2_vals), &no_op_deallocator, nullptr);

  TFE_TensorHandle* d0_h = TFE_NewTensorHandle(d0_t, status);
  TFE_TensorHandle* d1_h = TFE_NewTensorHandle(d1_t, status);
  TFE_TensorHandle* d2_h = TFE_NewTensorHandle(d2_t, status);
  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "NewTensorHandle(data) failed: %s\n", TF_Message(status));
    return 1;
  }

  // --- Build the Print op: tf.raw_ops.Print(...)
  TFE_Op* op = TFE_NewOp(ctx, "Print", status);
  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "TFE_NewOp(Print) failed: %s\n", TF_Message(status));
    return 1;
  }

  // input
  TFE_OpAddInput(op, input_h, status);

  // data (list input): three bool tensors with shapes [4], [1], [3]
  TFE_TensorHandle* data_list[3] = { d0_h, d1_h, d2_h };
  TFE_OpAddInputList(op, data_list, 3, status);

  // attrs: message='tmp/I', first_n=100, summarize=0  (← buggy path)
  const char* msg = "tmp/I";
  TFE_OpSetAttrString(op, "message", msg, std::strlen(msg));
  TFE_OpSetAttrInt(op, "first_n", 100);
  TFE_OpSetAttrInt(op, "summarize", 0);

  // Execute; Print returns its input
  int num_retvals = 1;
  TFE_TensorHandle* out_h = nullptr;
  TFE_Execute(op, &out_h, &num_retvals, status);

  if (TF_GetCode(status) != TF_OK) {
    std::fprintf(stderr, "TFE_Execute(Print) error: %s\n", TF_Message(status));
  } else {
    // Force materialization (ensures side effects happen)
    TF_Tensor* out_t = TFE_TensorHandleResolve(out_h, status);
    if (TF_GetCode(status) == TF_OK) TF_DeleteTensor(out_t);
  }

  // Cleanup
  TFE_DeleteOp(op);
  if (out_h) TFE_DeleteTensorHandle(out_h);
  TFE_DeleteTensorHandle(input_h);
  TFE_DeleteTensorHandle(d0_h);
  TFE_DeleteTensorHandle(d1_h);
  TFE_DeleteTensorHandle(d2_h);
  TF_DeleteTensor(input_t);
  TF_DeleteTensor(d0_t);
  TF_DeleteTensor(d1_t);
  TF_DeleteTensor(d2_t);
  TFE_DeleteContext(ctx);
  TFE_DeleteContextOptions(opts);
  TF_DeleteStatus(status);
  return 0;
}


*/