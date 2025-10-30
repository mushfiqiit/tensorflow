// ttypes_stub.h
#pragma once
#include <cstddef>
#include <cstdint>

// A minimal 1-D view class mimicking Eigen::TensorMap<Eigen::Tensor<T,1>>.
template <typename T>
class SimpleFlat1D {
public:
  using value_type = T;
  using index_type = std::ptrdiff_t;

  SimpleFlat1D() : p_(nullptr), n_(0) {}
  SimpleFlat1D(T* data, std::size_t n) : p_(data), n_(n) {}

  // Element access
  T& operator[](index_type i)             { return p_[i]; }
  const T& operator[](index_type i) const { return p_[i]; }
  T& operator()(index_type i)             { return p_[i]; }
  const T& operator()(index_type i) const { return p_[i]; }

  // Span-like bits
  T* data()                    { return p_; }
  const T* data() const        { return p_; }
  std::size_t size() const     { return n_; }
  bool empty() const           { return n_ == 0; }

  // Eigen-compat-ish: for rank-1, dimension(0) == size
  std::size_t dimension(int axis) const { return axis == 0 ? n_ : 1; }

  // Iteration
  T* begin()             { return p_; }
  T* end()               { return p_ + n_; }
  const T* begin() const { return p_; }
  const T* end()   const { return p_ + n_; }

private:
  T* p_;
  std::size_t n_;
};

// Minimal TTypes stub with Flat / ConstFlat.
template <typename T, typename IndexType = std::ptrdiff_t>
struct TTypes {
  using Flat      = SimpleFlat1D<T>;
  using ConstFlat = SimpleFlat1D<const T>;
};
