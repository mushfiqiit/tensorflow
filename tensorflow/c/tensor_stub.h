// tensor_stub.h
#ifndef TENSOR_STUB_H_
#define TENSOR_STUB_H_

#include <cstdint>
#include <cstddef>
#include <vector>
#include <string>
#include <utility>
#include <complex>
#include <atomic>

#include "tensorflow/core/framework/datatype_stub.h"
#include "tensorflow/c/tensor_buffer_stub.h"

namespace tensorflow {


// Lightweight equivalents for TF special types.
using tstring     = std::string;
using complex64   = std::complex<float>;
using complex128  = std::complex<double>;

// Quantized wrappers (opaque in this stub).
struct qint8   { int8_t  v; };
struct quint8  { uint8_t v; };
struct qint16  { int16_t v; };
struct quint16 { uint16_t v; };
struct qint32  { int32_t v; };

// bfloat16 / half stubs
struct bfloat16 { uint16_t v; };
namespace Eigen { struct half { uint16_t x; }; }

// Forward minimal memory type enum (matches your TensorBuffer stub).
enum class AllocatorMemoryType { kUnknown = 0, kCPU = 1 };

// Minimal StringPiece stand-in.
class StringPiece {
 public:
  StringPiece() : ptr_(nullptr), len_(0) {}
  StringPiece(const char* p, size_t n) : ptr_(p), len_(n) {}
  const char* data() const { return ptr_; }
  size_t size() const { return len_; }
  bool empty() const { return len_ == 0; }
 private:
  const char* ptr_;
  size_t len_;
};

// Status stub (OK / InvalidArgument only for now).
class Status {
 public:
  enum Code { kOk = 0, kInvalidArgument = 1 };
  Status() : code_(kOk), msg_() {}
  static Status OK() { return Status(); }
  static Status InvalidArgument(std::string m) {
    Status s; s.code_ = kInvalidArgument; s.msg_ = std::move(m); return s;
  }
  bool ok() const { return code_ == kOk; }
  std::string ToString() const { return ok() ? "OK" : ("InvalidArgument: " + msg_); }
 private:
  Code code_;
  std::string msg_;
};

// Allocator stubs
class Allocator {};
struct AllocationAttributes {};

// TensorProto / TensorDescription stubs
struct TensorProto {};
struct TensorDescription {};

// ---------- Refcount + TensorBuffer (lightweight, matches your earlier stub) ----------
namespace core {


// Minimal intrusive smart pointer used in one Tensor ctor signature.
template <typename T>
class RefCountPtr {
 public:
  RefCountPtr() : p_(nullptr) {}
  explicit RefCountPtr(T* p) : p_(p) {}
  RefCountPtr(const RefCountPtr& o) : p_(o.p_) { if (p_) p_->Ref(); }
  RefCountPtr(RefCountPtr&& o) noexcept : p_(o.p_) { o.p_ = nullptr; }
  RefCountPtr& operator=(const RefCountPtr& o) {
    if (this == &o) return *this;
    if (p_) p_->Unref();
    p_ = o.p_;
    if (p_) p_->Ref();
    return *this;
  }
  RefCountPtr& operator=(RefCountPtr&& o) noexcept {
    if (this == &o) return *this;
    if (p_) p_->Unref();
    p_ = o.p_;
    o.p_ = nullptr;
    return *this;
  }
  ~RefCountPtr() { if (p_) p_->Unref(); }
  T* get() const { return p_; }
  T* release() { T* t = p_; p_ = nullptr; return t; }
 private:
  T* p_;
};

}  // namespace core

class TensorBuffer : public core::RefCounted {
 public:
  explicit TensorBuffer(void* data_ptr) : data_(data_ptr) {}
  ~TensorBuffer() override {}
  void* data() const { return data_; }
  virtual size_t size() const = 0;
  virtual TensorBuffer* root_buffer() = 0;
  virtual void FillAllocationDescription(void* /*unused*/) const {}
  virtual bool GetAllocatedBytes(size_t* out_bytes) const {
    if (out_bytes) *out_bytes = size();
    return true;
  }
  virtual bool OwnsMemory() const { return true; }
  virtual AllocatorMemoryType GetMemoryType() const {
    return AllocatorMemoryType::kUnknown;
  }
 private:
  void* const data_;
};

// ---------- TensorShape (minimal but functional) ----------
class TensorShape {
 public:
  TensorShape() : dtype_(DT_FLOAT) {}  // default dtype like TF's default empty ctor case
  explicit TensorShape(std::vector<int64_t> dims)
      : dims_(std::move(dims)), dtype_(DT_FLOAT) {}
  int dims() const { return static_cast<int>(dims_.size()); }
  int64_t dim_size(int d) const { return dims_.at(d); }
  int64_t num_elements() const {
    int64_t n = 1;
    for (int64_t x : dims_) n *= (x < 0 ? 0 : x);
    return dims_.empty() ? 0 : n;  // empty 1-D tensor defaults to 0 here
  }
  bool IsSameSize(const TensorShape& other) const {
    if (dims_.size() != other.dims_.size()) return false;
    for (size_t i = 0; i < dims_.size(); ++i)
      if (dims_[i] != other.dims_[i]) return false;
    return true;
  }
  void set_data_type(DataType t) { dtype_ = t; }
  DataType data_type() const { return dtype_; }

  // convenience creators
  //static TensorShape Scalar() { return TensorShape({}); }
  static TensorShape Empty1D() { return TensorShape({0}); }
  const std::vector<int64_t>& as_vector() const { return dims_; }
 private:
  std::vector<int64_t> dims_;
  DataType dtype_;
};

// ---------- TTypes placeholder (only to satisfy return types) ----------
template <typename T, size_t ND = 1>
struct TTypes {
  struct Tensor    { /* opaque */ };
  struct UnalignedTensor { /* opaque */ };
};
template <typename T>
struct TTypes<T> {
  using Flat             = typename TTypes<T,1>::Tensor;
  using UnalignedFlat    = typename TTypes<T,1>::UnalignedTensor;
  using Vec              = typename TTypes<T,1>::Tensor;
  using ConstFlat        = typename TTypes<T,1>::Tensor;
  using UnalignedConstFlat = typename TTypes<T,1>::UnalignedTensor;
  using ConstVec         = typename TTypes<T,1>::Tensor;
  using Matrix           = typename TTypes<T,2>::Tensor;
  using ConstMatrix      = typename TTypes<T,2>::Tensor;
  using Scalar           = typename TTypes<T,1>::Tensor;
  using ConstScalar      = typename TTypes<T,1>::Tensor;
};

// ---------- Tensor (stub) ----------
class Tensor {
 public:
  // 1-D, 0-element float tensor (initialized)
  Tensor() : shape_(TensorShape::Empty1D()), buf_(nullptr) {
    shape_.set_data_type(DT_FLOAT);
  }

  // CPU allocator ctor (ignored in stub, behaves like default allocation-less)
  Tensor(DataType type, const TensorShape& shape)
      : shape_(shape), buf_(nullptr) {
    shape_.set_data_type(type);
  }

  Tensor(Allocator* /*a*/, DataType type, const TensorShape& shape)
      : shape_(shape), buf_(nullptr) { shape_.set_data_type(type); }

  Tensor(Allocator* /*a*/, DataType type, const TensorShape& shape,
         const AllocationAttributes& /*attr*/)
      : shape_(shape), buf_(nullptr) { shape_.set_data_type(type); }

  // Acquire ref on buf
  Tensor(DataType type, const TensorShape& shape, TensorBuffer* buf)
      : shape_(shape), buf_(buf) {
    shape_.set_data_type(type);
    if (buf_) buf_->Ref();
  }

  // Take ownership from RefCountPtr
  Tensor(DataType type, TensorShape shape, core::RefCountPtr<TensorBuffer> buf)
      : shape_(std::move(shape)), buf_(buf.release()) {
    shape_.set_data_type(type);
  }

  explicit Tensor(DataType type)
      : shape_(TensorShape::Empty1D()), buf_(nullptr) {
    shape_.set_data_type(type);
  }

  static Status BuildTensor(DataType type, const TensorShape& shape,
                            Tensor* out) {
    if (!out) return Status::InvalidArgument("out_tensor is null");
    *out = Tensor(type, shape);
    return Status::OK();
  }

 private:
  struct host_scalar_tag {};
  template <typename T>
  Tensor(T /*value*/, host_scalar_tag /*tag*/)
      : shape_(TensorShape::Scalar()), buf_(nullptr) {
    // Store only metadata; actual scalar payload not modeled in stub.
  }

 public:
  // Scalar ctors (store only dtype/shape metadata).
  explicit Tensor(float v)      : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_FLOAT); }
  explicit Tensor(double v)     : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_DOUBLE); }
  explicit Tensor(int32_t v)    : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_INT32); }
  explicit Tensor(uint32_t v)   : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_UINT32); }
  explicit Tensor(uint16_t v)   : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_UINT16); }
  explicit Tensor(uint8_t v)    : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_UINT8); }
  explicit Tensor(int16_t v)    : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_INT16); }
  explicit Tensor(int8_t v)     : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_INT8); }
  explicit Tensor(tstring v)    : Tensor(std::move(v), host_scalar_tag{}) { shape_.set_data_type(DT_STRING); }
  explicit Tensor(complex64 v)  : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_COMPLEX64); }
  explicit Tensor(complex128 v) : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_COMPLEX128); }
  explicit Tensor(int64_t v)    : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_INT64); }
  explicit Tensor(uint64_t v)   : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_UINT64); }
  explicit Tensor(bool v)       : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_BOOL); }
  explicit Tensor(qint8 v)      : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_QINT8); }
  explicit Tensor(quint8 v)     : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_QUINT8); }
  explicit Tensor(qint16 v)     : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_QINT16); }
  explicit Tensor(quint16 v)    : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_QUINT16); }
  explicit Tensor(qint32 v)     : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_QINT32); }
  explicit Tensor(bfloat16 v)   : Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_BFLOAT16); }
  explicit Tensor(Eigen::half v): Tensor(v, host_scalar_tag{}) { shape_.set_data_type(DT_HALF); }
  explicit Tensor(const char* s): Tensor(tstring(s)) {}

  // Copy / move / dtor
  Tensor(const Tensor& other) : shape_(other.shape_), buf_(other.buf_) {
    if (buf_) buf_->Ref();
  }
  Tensor(Tensor&& other) noexcept : shape_(other.shape_), buf_(other.buf_) {
    other.buf_ = nullptr;
    other.shape_ = TensorShape();  // dtype defaulted
  }
  ~Tensor() { if (buf_) buf_->Unref(); }

  Tensor& operator=(const Tensor& other) {
    CopyFromInternal(other, other.shape_);
    return *this;
  }
  Tensor& operator=(Tensor&& other) noexcept {
    if (this == &other) return *this;
    if (buf_) buf_->Unref();
    shape_ = other.shape_;
    buf_ = other.buf_;
    other.buf_ = nullptr;
    other.shape_ = TensorShape();
    return *this;
  }

  // Basic metadata
  DataType dtype() const { return shape_.data_type(); }
  const TensorShape& shape() const { return shape_; }
  int dims() const { return shape_.dims(); }
  int64_t dim_size(int d) const { return shape_.dim_size(d); }
  int64_t NumElements() const { return shape_.num_elements(); }
  bool IsSameSize(const Tensor& b) const { return shape_.IsSameSize(b.shape_); }
  bool SharesBufferWith(const Tensor& b) const { return buf_ == b.buf_; }

  // Initialization: zero-element tensors considered initialized.
  bool IsInitialized() const { return NumElements() == 0 || buf_ != nullptr; }

  size_t TotalBytes() const {
    size_t el = DataTypeSize(dtype());
    return (el == 0) ? 0 : static_cast<size_t>(NumElements()) * el;
  }

  size_t AllocatedBytes() const {
    size_t n = 0;
    if (buf_ && buf_->GetAllocatedBytes(&n)) return n;
    return 0;
  }

  // Alignment check: conservative in stub.
  bool IsAligned() const { return true; }

  // Copy with reshape (shares buffer).
  bool CopyFrom(const Tensor& other, const TensorShape& shape) {
    if (other.NumElements() != shape.num_elements()) return false;
    CopyFromInternal(other, shape);
    return true;
  }

  // Slicing (shape-only; does NOT adjust data pointer in this stub).
  Tensor Slice(int64_t dim0_start, int64_t dim0_limit) const {
    Tensor t(*this);
    if (dims() >= 1 && dim0_start >= 0 && dim0_limit >= dim0_start &&
        dim0_limit <= dim_size(0)) {
      std::vector<int64_t> v = shape_.as_vector();
      v[0] = dim0_limit - dim0_start;
      t.shape_ = TensorShape(v);
      t.shape_.set_data_type(dtype());
    }
    return t;
  }

  // SubSlice (drops first dimension; shape-only).
  Tensor SubSlice(int64_t index) const {
    Tensor t(*this);
    if (dims() >= 1 && index >= 0 && index < dim_size(0)) {
      std::vector<int64_t> v = shape_.as_vector();
      v.erase(v.begin());
      t.shape_ = TensorShape(v);
      t.shape_.set_data_type(dtype());
    }
    return t;
  }

  // Proto I/O no-ops
  bool FromProto(const TensorProto& /*other*/) { return false; }
  bool FromProto(Allocator* /*a*/, const TensorProto& /*other*/) { return false; }
  void AsProtoField(TensorProto* /*p*/) const {}
  void AsProtoTensorContent(TensorProto* /*p*/) const {}

  // Eigen view helpers (types only; not instantiated in this stub)
  template <typename T> typename TTypes<T>::Vec vec() { return tensor<T,1>(); }
  template <typename T> typename TTypes<T>::Matrix matrix() { return tensor<T,2>(); }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor tensor() { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor bit_casted_tensor() { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor reinterpret_last_dimension() { return {}; }
  template <typename T> typename TTypes<T>::Flat flat() { return shaped<T,1>({NumElements()}); }
  template <typename T> typename TTypes<T>::UnalignedFlat unaligned_flat() { return unaligned_shaped<T,1>({NumElements()}); }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor flat_inner_dims() { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor flat_outer_dims() { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::Tensor flat_inner_outer_dims(int64_t) { return {}; }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::Tensor shaped(std::initializer_list<int64_t>) { return {}; }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::Tensor bit_casted_shaped(std::initializer_list<int64_t>) { return {}; }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::UnalignedTensor unaligned_shaped(std::initializer_list<int64_t>) { return {}; }

  // Const variants
  template <typename T> typename TTypes<T>::ConstVec vec() const { return tensor<T,1>(); }
  template <typename T> typename TTypes<T>::ConstMatrix matrix() const { return tensor<T,2>(); }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor tensor() const { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor bit_casted_tensor() const { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor reinterpret_last_dimension() const { return {}; }
  template <typename T> typename TTypes<T>::ConstFlat flat() const { return shaped<T,1>({NumElements()}); }
  template <typename T> typename TTypes<T>::UnalignedConstFlat unaligned_flat() const { return unaligned_shaped<T,1>({NumElements()}); }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::ConstTensor shaped(std::initializer_list<int64_t>) const { return {}; }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::ConstTensor bit_casted_shaped(std::initializer_list<int64_t>) const { return {}; }
  template <typename T, size_t NDIMS>
  typename TTypes<T,NDIMS>::UnalignedConstTensor unaligned_shaped(std::initializer_list<int64_t>) const { return {}; }
  template <typename T> typename TTypes<T>::ConstScalar scalar() const { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor flat_inner_dims() const { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor flat_outer_dims() const { return {}; }
  template <typename T, size_t NDIMS> typename TTypes<T,NDIMS>::ConstTensor flat_inner_outer_dims(int64_t) const { return {}; }

  // Debug helpers
  std::string SummarizeValue(int64_t /*max_entries*/, bool /*v2*/ = false) const {
    return "Tensor[dtype=" + std::to_string(dtype()) + ", shape=" + DebugShape() + "]";
  }
  std::string DebugString(int /*num_values*/) const { return SummarizeValue(3); }
  std::string DebugString() const { return DebugString(3); }
  std::string DeviceSafeDebugString() const { return DebugString(); }

  void FillDescription(TensorDescription* /*desc*/) const {}

  // Raw access
  StringPiece tensor_data() const { return StringPiece(reinterpret_cast<const char*>(data()), TotalBytes()); }
  void* data() const { return buf_ ? buf_->data() : nullptr; }

  // Bitcast (shares storage; validates size compatibility)
  Status BitcastFrom(const Tensor& other, DataType new_dtype,
                     const TensorShape& new_shape) {
    const int64_t src_elems = other.NumElements();
    const int64_t dst_elems = new_shape.num_elements();
    const size_t  src_size  = (DataTypeSize(other.dtype()) == 0) ? 0
                           : static_cast<size_t>(src_elems) * DataTypeSize(other.dtype());
    const size_t  dst_size  = (DataTypeSize(new_dtype) == 0) ? 0
                           : static_cast<size_t>(dst_elems) * DataTypeSize(new_dtype);
    if (src_size == 0 || dst_size == 0 || src_size != dst_size) {
      return Status::InvalidArgument("BitcastFrom: incompatible sizes");
    }
    CopyFromInternal(other, new_shape);
    shape_.set_data_type(new_dtype);
    return Status::OK();
  }

  bool RefCountIsOne() const {
    // No direct access to root buffer in this stub; conservatively return false when shared is unknown.
    return false;
  }

  AllocatorMemoryType GetMemoryType() const {
    return buf_ ? buf_->GetMemoryType() : AllocatorMemoryType::kUnknown;
  }

 private:
  void set_dtype(DataType t) { shape_.set_data_type(t); }

  void CopyFromInternal(const Tensor& other, const TensorShape& shape) {
    if (buf_ != other.buf_) {
      if (buf_) buf_->Unref();
      buf_ = other.buf_;
      if (buf_) buf_->Ref();
    }
    shape_ = shape;
    shape_.set_data_type(other.dtype());
  }

  std::string DebugShape() const {
    const auto& v = shape_.as_vector();
    std::string s = "[";
    for (size_t i = 0; i < v.size(); ++i) {
      s += std::to_string(v[i]);
      if (i + 1 < v.size()) s += ",";
    }
    s += "]";
    return s;
  }

  TensorShape  shape_;
  TensorBuffer* buf_ = nullptr;

  // Friends kept for signature compatibility (no-op in stub).
  friend class DMAHelper;
  friend class TensorCApi;
  friend class TensorCord;
  friend class TensorReference;
  friend class VariableOp;
  friend class AutoReloadVariableOp;
  friend class TensorTestHelper;
  friend class CastOpBase;
  friend class ScopedAllocator;
};

}  // namespace tensorflow

#endif  // TENSOR_STUB_H_
