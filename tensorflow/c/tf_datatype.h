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

#ifndef TENSORFLOW_C_TF_DATATYPE_H_
#define TENSORFLOW_C_TF_DATATYPE_H_

#include <stddef.h>

#include "tensorflow/c/c_api_macros.h"

#ifdef __cplusplus
extern "C" {
#endif



// --------------------------------------------------------------------------
// TF_DataType holds the type for a scalar value.  E.g., one slot in a tensor.
// The enum values here are identical to corresponding values in types.proto.
typedef enum TF_DataType {
  TF_FLOAT = 1,
  TF_DOUBLE = 2,
  TF_INT32 = 3,  // Int32 tensors are always in 'host' memory.
  TF_UINT8 = 4,
  TF_INT16 = 5,
  TF_INT8 = 6,
  TF_STRING = 7,
  TF_COMPLEX64 = 8,  // Single-precision complex
  TF_COMPLEX = 8,    // Old identifier kept for API backwards compatibility
  TF_INT64 = 9,
  TF_BOOL = 10,
  TF_QINT8 = 11,     // Quantized int8
  TF_QUINT8 = 12,    // Quantized uint8
  TF_QINT32 = 13,    // Quantized int32
  TF_BFLOAT16 = 14,  // Float32 truncated to 16 bits.
  TF_QINT16 = 15,    // Quantized int16
  TF_QUINT16 = 16,   // Quantized uint16
  TF_UINT16 = 17,
  TF_COMPLEX128 = 18,  // Double-precision complex
  TF_HALF = 19,
  TF_RESOURCE = 20,
  TF_VARIANT = 21,
  TF_UINT32 = 22,
  TF_UINT64 = 23,
  TF_FLOAT8_E5M2 = 24,    // 5 exponent bits, 2 mantissa bits.
  TF_FLOAT8_E4M3FN = 25,  // 4 exponent bits, 3 mantissa bits, finite-only, with
                          // 2 NaNs (0bS1111111).
  TF_FLOAT8_E4M3FNUZ = 26,     // 4 exponent bits, 3 mantissa bits,
                               // finite-only,with NaN.
  TF_FLOAT8_E4M3B11FNUZ = 27,  // 4 exponent bits, 3 mantissa bits, 11 bits
                               // bias, finite-only, with NaNs.
  TF_FLOAT8_E5M2FNUZ = 28,     // 5 exponent bits, 2 mantissa bits,
                               // finite-only,with NaN.
  TF_INT4 = 29,
  TF_UINT4 = 30,
  TF_INT2 = 31,
  TF_UINT2 = 32,
} TF_DataType;

/* ---- Begin local stub for TF_DataTypeSize (enabled if no real impl) ---- */
#ifndef TF_DATATYPE_SIZE_STUB_DEFINED
#define TF_DATATYPE_SIZE_STUB_DEFINED 1

/* If some build ever supplies a real implementation (e.g. via TensorFlow .cc),
   you can -DTF_DATATYPE_SIZE_STUB_DEFINED=0 to disable this inline stub. */

static inline size_t TF_DataTypeSize(TF_DataType dt) {
  switch (dt) {
    case TF_FLOAT:        return sizeof(float);
    case TF_DOUBLE:       return sizeof(double);
    case TF_INT32:        return sizeof(int32_t);
    case TF_UINT32:       return sizeof(uint32_t);
    case TF_UINT8:        return sizeof(uint8_t);
    case TF_UINT16:       return sizeof(uint16_t);
    case TF_INT16:        return sizeof(int16_t);
    case TF_INT8:         return sizeof(int8_t);
    case TF_COMPLEX64:    return sizeof(_Complex float);   /* C complex */
    case TF_COMPLEX128:   return sizeof(_Complex double);
    case TF_INT64:        return sizeof(int64_t);
    case TF_UINT64:       return sizeof(uint64_t);
    case TF_BOOL:         return sizeof(unsigned char);

    /* Quantized map to underlying ints */
    case TF_QINT8:        return sizeof(int8_t);
    case TF_QUINT8:       return sizeof(uint8_t);
    case TF_QINT16:       return sizeof(int16_t);
    case TF_QUINT16:      return sizeof(uint16_t);
    case TF_QINT32:       return sizeof(int32_t);

    /* 16-bit float-like types */
    case TF_BFLOAT16:     return 2;
    case TF_HALF:         return 2;

    /* Opaque / variable-size payloads: return 0 so callers don’t size-check */
    case TF_STRING:
    case TF_RESOURCE:
    case TF_VARIANT:
      return 0;

    /* New 8-bit float formats: 1 byte each */
    case TF_FLOAT8_E5M2:
    case TF_FLOAT8_E4M3FN:
    case TF_FLOAT8_E4M3FNUZ:
    case TF_FLOAT8_E4M3B11FNUZ:
    case TF_FLOAT8_E5M2FNUZ:
      return 1;

    /* Sub-byte integer “types” — not representable as element-sized in C API */
    case TF_INT4:
    case TF_UINT4:
    case TF_INT2:
    case TF_UINT2:
      return 0;

    default:
      return 0;
  }
}
#endif /* TF_DATATYPE_SIZE_STUB_DEFINED */
/* ---- End local stub ---- */


// TF_DataTypeSize returns the sizeof() for the underlying type corresponding
// to the given TF_DataType enum value. Returns 0 for variable length types
// (eg. TF_STRING) or on failure.
TF_CAPI_EXPORT extern size_t TF_DataTypeSize(TF_DataType dt);

#ifdef __cplusplus
} /* end extern "C" */
#endif

#endif  // TENSORFLOW_C_TF_DATATYPE_H_
