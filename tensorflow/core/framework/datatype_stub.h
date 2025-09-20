#pragma once
#include <cstdint>
#include <limits>

namespace tensorflow {

// Exact stub of TensorFlow's DataType enum (underlying type = int).
// No external deps beyond the C++ standard library.
enum DataType : int {
  DT_INVALID = 0,
  DT_FLOAT = 1,
  DT_DOUBLE = 2,
  DT_INT32 = 3,
  DT_UINT8 = 4,
  DT_INT16 = 5,
  DT_INT8 = 6,
  DT_STRING = 7,
  DT_COMPLEX64 = 8,
  DT_INT64 = 9,
  DT_BOOL = 10,
  DT_QINT8 = 11,
  DT_QUINT8 = 12,
  DT_QINT32 = 13,
  DT_BFLOAT16 = 14,
  DT_QINT16 = 15,
  DT_QUINT16 = 16,
  DT_UINT16 = 17,
  DT_COMPLEX128 = 18,
  DT_HALF = 19,
  DT_RESOURCE = 20,
  DT_VARIANT = 21,
  DT_UINT32 = 22,
  DT_UINT64 = 23,
  DT_FLOAT8_E5M2 = 24,
  DT_FLOAT8_E4M3FN = 25,
  DT_FLOAT8_E4M3FNUZ = 26,
  DT_FLOAT8_E4M3B11FNUZ = 27,
  DT_FLOAT8_E5M2FNUZ = 28,
  DT_INT4 = 29,
  DT_UINT4 = 30,
  DT_INT2 = 31,
  DT_UINT2 = 32,

  // "Ref" types:
  DT_FLOAT_REF = 101,
  DT_DOUBLE_REF = 102,
  DT_INT32_REF = 103,
  DT_UINT8_REF = 104,
  DT_INT16_REF = 105,
  DT_INT8_REF = 106,
  DT_STRING_REF = 107,
  DT_COMPLEX64_REF = 108,
  DT_INT64_REF = 109,
  DT_BOOL_REF = 110,
  DT_QINT8_REF = 111,
  DT_QUINT8_REF = 112,
  DT_QINT32_REF = 113,
  DT_BFLOAT16_REF = 114,
  DT_QINT16_REF = 115,
  DT_QUINT16_REF = 116,
  DT_UINT16_REF = 117,
  DT_COMPLEX128_REF = 118,
  DT_HALF_REF = 119,
  DT_RESOURCE_REF = 120,
  DT_VARIANT_REF = 121,
  DT_UINT32_REF = 122,
  DT_UINT64_REF = 123,
  DT_FLOAT8_E5M2_REF = 124,
  DT_FLOAT8_E4M3FN_REF = 125,
  DT_FLOAT8_E4M3FNUZ_REF = 126,
  DT_FLOAT8_E4M3B11FNUZ_REF = 127,
  DT_FLOAT8_E5M2FNUZ_REF = 128,
  DT_INT4_REF = 129,
  DT_UINT4_REF = 130,
  DT_INT2_REF = 131,
  DT_UINT2_REF = 132,

  // Sentinels match original TF definition.
  DataType_INT_MIN_SENTINEL_DO_NOT_USE_ =
      std::numeric_limits<::int32_t>::min(),
  DataType_INT_MAX_SENTINEL_DO_NOT_USE_ =
      std::numeric_limits<::int32_t>::max(),
};

inline int DataTypeSize(DataType dt) {
  switch (dt) {
    case DT_FLOAT:   return 4;
    case DT_DOUBLE:  return 8;
    case DT_INT8:    return 1;
    case DT_UINT8:   return 1;
    case DT_INT16:   return 2;
    case DT_UINT16:  return 2;
    case DT_INT32:   return 4;
    case DT_UINT32:  return 4;
    case DT_INT64:   return 8;
    case DT_UINT64:  return 8;
    case DT_BOOL:    return 1;
    //case DT_COMPLEX64:  return sizeof(std::complex<float>);
    //case DT_COMPLEX128: return sizeof(std::complex<double>);
    case DT_BFLOAT16:   return 2;
    case DT_HALF:       return 2;
    case DT_QINT8:      return 1;
    case DT_QUINT8:     return 1;
    case DT_QINT16:     return 2;
    case DT_QUINT16:    return 2;
    case DT_QINT32:     return 4;
    // Strings are variable-sized; treat as 0 for allocation math here.
    case DT_STRING:     return 0;
    default:            return 0;
  }
}

}  // namespace tensorflow
