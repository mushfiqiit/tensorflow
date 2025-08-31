// tensorshapestub.h
#ifndef TENSORFLOW_CORE_FRAMEWORK_TENSOR_SHAPE_STUB_H_
#define TENSORFLOW_CORE_FRAMEWORK_TENSOR_SHAPE_STUB_H_

#include <cstdint>
#include <initializer_list>
#include <vector>

// ---- Your existing global DataType enum ----
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
};

namespace absl {

// Match Abseil’s inline namespace so Status/StatusOr unify with real headers.
inline namespace lts_20250127 {
class Status {
 public:
  static Status OK() { return Status(); }
  bool ok() const { return true; }
};

template <typename T>
class StatusOr {
 public:
  StatusOr(const T& v) : value_(v) {}
  bool ok() const { return true; }
  const T& value() const { return value_; }
  const T& operator*() const { return value_; }
  const T* operator->() const { return &value_; }
 private:
  T value_;
};
}  // inline namespace lts_20250127

// ---- Span stub: only define if real Abseil span isn't present ----
#ifndef ABSL_TYPES_SPAN_H_
#define ABSL_TYPES_SPAN_H_
template <typename T>
class Span {
 public:
  Span() : data_(nullptr), size_(0) {}
  Span(const T* data, size_t size) : data_(data), size_(size) {}
  Span(const std::vector<T>& v) : data_(v.data()), size_(v.size()) {}
  Span(std::initializer_list<T> il) : data_(il.begin()), size_(il.size()) {}
  const T* data() const { return data_; }
  size_t size() const { return size_; }
 private:
  const T* data_;
  size_t size_;
};
#endif  // ABSL_TYPES_SPAN_H_

} 

namespace Eigen {
using DenseIndex = long long;

template <typename IndexType, int NDIMS>
struct DSizes {
  IndexType dims[NDIMS]{};
  IndexType& operator[](int i) { return dims[i]; }
  const IndexType& operator[](int i) const { return dims[i]; }
};
}  // namespace Eigen

namespace tensorflow {

// Make the global DataType visible as tensorflow::DataType
using ::DataType;

class PartialTensorShape;
class Tensor;
class TensorShapeProto;

class PartialTensorShape {
 public:
  PartialTensorShape() = default;
};

// ------------------------- TensorShape (stub) ------------------------- //
class TensorShape {
 public:
  TensorShape() = default;
  explicit TensorShape(std::initializer_list<int64_t> dims) : dims_(dims) {}
  explicit TensorShape(const std::vector<int64_t>& dims) : dims_(dims) {}

  // NEW: minimal dtype API used by tensor.h
  void set_data_type(DataType t) { dtype_ = t; }
  DataType data_type() const { return dtype_; }

  // NEW: required by tensor.h's NumElements() wrapper
  int64_t num_elements() const {
    if (dims_.empty()) return 1;          // scalar tensor
    int64_t prod = 1;
    for (int64_t d : dims_) {
      if (d <= 0) return 0;               // 0 or unknown/negative -> 0
      prod *= d;
    }
    return prod;
  }

  // Factory methods (compile-only OK)
  static absl::Status BuildTensorShape(absl::Span<const int64_t> dim_sizes,
                                       TensorShape* out) {
    //if (out)  ;  out->dims_.assign(dim_sizes.data(), dim_sizes.data() + dim_sizes.size());
    return absl::Status::OK();
  }
  static absl::Status BuildTensorShape(std::initializer_list<int64_t> dim_sizes,
                                       TensorShape* out) {
    if (out) out->dims_.assign(dim_sizes.begin(), dim_sizes.end());
    return absl::Status::OK();
  }
  static absl::Status BuildTensorShape(const TensorShapeProto& /*proto*/,
                                       TensorShape* out) {
    if (out) out->dims_.clear();
    return absl::Status::OK();
  }
  static absl::StatusOr<TensorShape> BuildTensorShape(
      const TensorShapeProto& proto) {
    TensorShape out;
    (void)BuildTensorShape(proto, &out);
    return absl::StatusOr<TensorShape>(out);
  }

  operator const PartialTensorShape&() const { return partial_; }

  int dims() const { return static_cast<int>(dims_.size()); }
  int64_t dim_size(int i) const { return dims_.at(i); }
  bool IsSameSize(const TensorShape& b) const { return dims_ == b.dims_; }

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  Eigen::DSizes<IndexType, NDIMS> AsEigenDSizes() const {
    CheckDimsEqual(NDIMS);
    return AsEigenDSizesCopy<NDIMS, IndexType>();
  }

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  absl::Status AsEigenDSizesWithStatus(
      Eigen::DSizes<IndexType, NDIMS>* out) const {
    if (!out) return absl::Status::OK();
    CheckDimsEqual(NDIMS);
    *out = AsEigenDSizesCopy<NDIMS, IndexType>();
    return absl::Status::OK();
  }

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  Eigen::DSizes<IndexType, NDIMS> AsEigenDSizesWithPadding() const {
    CheckDimsAtMost(NDIMS);
    return AsEigenDSizesCopyAndPad<NDIMS, IndexType>();
  }

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  absl::Status AsEigenDSizesWithPaddingWithStatus(
      Eigen::DSizes<IndexType, NDIMS>* out) const {
    if (!out) return absl::Status::OK();
    CheckDimsAtMost(NDIMS);
    *out = AsEigenDSizesCopyAndPad<NDIMS, IndexType>();
    return absl::Status::OK();
  }

 private:
  void CheckDimsEqual(int) const {}
  void CheckDimsAtMost(int) const {}

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  Eigen::DSizes<IndexType, NDIMS> AsEigenDSizesCopy() const {
    Eigen::DSizes<IndexType, NDIMS> out;
    for (int i = 0; i < NDIMS; ++i) {
      out[i] = (i < static_cast<int>(dims_.size()))
                   ? static_cast<IndexType>(dims_[i])
                   : static_cast<IndexType>(1);
    }
    return out;
  }

  template <int NDIMS, typename IndexType = Eigen::DenseIndex>
  Eigen::DSizes<IndexType, NDIMS> AsEigenDSizesCopyAndPad() const {
    Eigen::DSizes<IndexType, NDIMS> out;
    int i = 0;
    for (; i < static_cast<int>(dims_.size()) && i < NDIMS; ++i) {
      out[i] = static_cast<IndexType>(dims_[i]);
    }
    for (; i < NDIMS; ++i) out[i] = static_cast<IndexType>(1);
    return out;
  }

  std::vector<int64_t> dims_;
  DataType dtype_ = DT_INVALID;     // <--- NEW backing store for dtype
  PartialTensorShape partial_;
  friend class Tensor;
};

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_FRAMEWORK_TENSOR_SHAPE_STUB_H_
