#ifndef TENSORFLOW_CORE_FRAMEWORK_DATATYPE_MEMCPY_STUB_H_
#define TENSORFLOW_CORE_FRAMEWORK_DATATYPE_MEMCPY_STUB_H_

// No deps; relies on your existing global ::DataType enum.
#include <cstdint>
#include "tensorshapestub.h"

namespace tensorflow {

// Bring your enum into the tensorflow namespace if you haven't already
using ::DataType;

// Return true for the exact types TF allows memcpy on.
// (Strings/resources/variants return false.)
inline bool DataTypeCanUseMemcpy(DataType dt) {
  switch (dt) {
    case DT_FLOAT:
    case DT_DOUBLE:
    case DT_INT32:
    case DT_UINT32:
    case DT_UINT8:
    case DT_UINT16:
    case DT_INT16:
    case DT_INT8:
    case DT_COMPLEX64:
    case DT_COMPLEX128:
    case DT_INT64:
    case DT_UINT64:
    case DT_BOOL:
    case DT_QINT8:
    case DT_QUINT8:
    case DT_QINT16:
    case DT_QUINT16:
    case DT_QINT32:
    case DT_BFLOAT16:
    case DT_HALF:
    case DT_FLOAT8_E5M2:
    case DT_FLOAT8_E4M3FN:
    case DT_FLOAT8_E4M3FNUZ:
    case DT_FLOAT8_E4M3B11FNUZ:
    case DT_FLOAT8_E5M2FNUZ:
    case DT_INT4:
    case DT_UINT4:
    case DT_INT2:
    case DT_UINT2:
      return true;

    default:
      return false;
  }
}

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_FRAMEWORK_DATATYPE_MEMCPY_STUB_H_
