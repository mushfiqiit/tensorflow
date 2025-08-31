/* Copyright 2019 The TensorFlow Authors. All Rights Reserved.

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

#ifndef TENSORFLOW_C_TF_TENSOR_H_
#define TENSORFLOW_C_TF_TENSOR_H_

#include <stdbool.h>
#include <stdint.h>

#include "tensorflow/c/c_api_macros.h"
#include "tensorflow/c/tf_datatype.h"
//#include "tensorflow/c/tf_status.h"

#ifdef __cplusplus
extern "C" {
#endif

// Allocator Attributes used for tensor allocation.
typedef struct TF_AllocatorAttributes {
  size_t struct_size;
  // Set boolean to 1 for CPU allocation, else 0.
  TF_Bool on_host;
} TF_AllocatorAttributes;

#define TF_ALLOCATOR_ATTRIBUTES_STRUCT_SIZE \
  TF_OFFSET_OF_END(TF_AllocatorAttributes, on_host)

// --------------------------------------------------------------------------
// TF_Tensor holds a multi-dimensional array of elements of a single data type.
// For all types other than TF_STRING, the data buffer stores elements
// in row major order.  E.g. if data is treated as a vector of TF_DataType:
//
//   element 0:   index (0, ..., 0)
//   element 1:   index (0, ..., 1)
//   ...
//
// The format for TF_STRING tensors is:
//   start_offset: array[uint64]
//   data:         byte[...]
//
//   The string length (as a varint, start_offset[i + 1] - start_offset[i]),
//   followed by the contents of the string is encoded at data[start_offset[i]].
//   TF_StringEncode and TF_StringDecode facilitate this encoding.

typedef struct TF_Tensor TF_Tensor;

// Return a new tensor that holds the bytes data[0,len-1].
//
// The data will be deallocated by a subsequent call to TF_DeleteTensor via:
//      (*deallocator)(data, len, deallocator_arg)
// Clients must provide a custom deallocator function so they can pass in
// memory managed by something like numpy.
//
// May return NULL (and invoke the deallocator) if the provided data buffer
// (data, len) is inconsistent with a tensor of the given TF_DataType
// and the shape specified by (dima, num_dims).
TF_CAPI_EXPORT extern TF_Tensor* TF_NewTensor(
    TF_DataType, const int64_t* dims, int num_dims, void* data, size_t len,
    void (*deallocator)(void* data, size_t len, void* arg),
    void* deallocator_arg);

// Returns the alignment, in bytes, required for allocating aligned tensors.
//
// This can be used in combination with TF_NewTensor to manually manage
// memory while ensuring the resulting tensors satisfy TensorFlow's
// memory alignment preferences.
TF_CAPI_EXPORT extern size_t TF_TensorDefaultAlignment();

// Allocate and return a new Tensor.
//
// This function is an alternative to TF_NewTensor and should be used when
// memory is allocated to pass the Tensor to the C API. The allocated memory
// satisfies TensorFlow's memory alignment preferences and should be preferred
// over calling malloc and free.
//
// The caller must set the Tensor values by writing them to the pointer returned
// by TF_TensorData with length TF_TensorByteSize.
TF_CAPI_EXPORT extern TF_Tensor* TF_AllocateTensor(TF_DataType,
                                                   const int64_t* dims,
                                                   int num_dims, size_t len);

// Deletes `tensor` and returns a new TF_Tensor with the same content if
// possible. Returns nullptr and leaves `tensor` untouched if not.
TF_CAPI_EXPORT extern TF_Tensor* TF_TensorMaybeMove(TF_Tensor* tensor);

// Destroy a tensor.
TF_CAPI_EXPORT extern void TF_DeleteTensor(TF_Tensor*);

// Return the type of a tensor element.
TF_CAPI_EXPORT extern TF_DataType TF_TensorType(const TF_Tensor*);

// Set a new shape for the Tensor.
TF_CAPI_EXPORT extern void TF_SetShape(TF_Tensor* tensor, const int64_t* dims,
                                       int num_dims);

// Return the number of dimensions that the tensor has.
TF_CAPI_EXPORT extern int TF_NumDims(const TF_Tensor*);

// Return the length of the tensor in the "dim_index" dimension.
// REQUIRES: 0 <= dim_index < TF_NumDims(tensor)
TF_CAPI_EXPORT extern int64_t TF_Dim(const TF_Tensor* tensor, int dim_index);

// Return the size of the underlying data in bytes.
TF_CAPI_EXPORT extern size_t TF_TensorByteSize(const TF_Tensor*);

// Return a pointer to the underlying data buffer.
TF_CAPI_EXPORT extern void* TF_TensorData(const TF_Tensor*);

// Returns the number of elements in the tensor.
TF_CAPI_EXPORT extern int64_t TF_TensorElementCount(const TF_Tensor* tensor);



// Returns bool iff this tensor is aligned.
TF_CAPI_EXPORT extern bool TF_TensorIsAligned(const TF_Tensor*);

#ifdef __cplusplus
} /* end extern "C" */
#endif

#endif  // TENSORFLOW_C_TF_TENSOR_H_
