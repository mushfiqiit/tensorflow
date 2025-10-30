#pragma once
#include <cstddef>
#include <memory>
#include <new>
#include <cassert>

// ------------------------------
// Minimal 1-D flat view (mutable)
// ------------------------------
template <typename T>
class FlatView {
public:
  using value_type = T;
  using iterator = T*;
  using const_iterator = const T*;

  FlatView() = default;

  // Own an internal zero-initialized buffer of n elements (no exceptions).
  explicit FlatView(std::size_t n) : size_(n) {
    if (n) {
      data_owner_.reset(new (std::nothrow) T[n]{});
      data_ = data_owner_.get();
      assert(data_ && "FlatView allocation failed");
    }
  }

  // Non-owning view over external memory (optional path).
  FlatView(T* data, std::size_t n) : data_(data), size_(n) {}

  // Shallow-copy semantics so FlatView is copyable (TF functors pass by value)
  FlatView(const FlatView& other) : data_(other.data_), size_(other.size_) {}
  FlatView& operator=(const FlatView& other) {
    if (this != &other) {
      data_ = other.data_;
      size_ = other.size_;
      data_owner_.reset();
    }
    return *this;
  }

  std::size_t size() const { return size_; }
  bool empty() const { return size_ == 0; }
  T* data() { return data_; }
  const T* data() const { return data_; }

  T& operator[](std::size_t i) {
    assert(i < size_ && "FlatView index OOB");
    return data_[i];
  }
  const T& operator[](std::size_t i) const {
    assert(i < size_ && "FlatView index OOB");
    return data_[i];
  }

  iterator begin() { return data_; }
  iterator end() { return data_ + size_; }
  const_iterator begin() const { return data_; }
  const_iterator end() const { return data_ + size_; }
  const_iterator cbegin() const { return data_; }
  const_iterator cend() const { return data_ + size_; }

private:
  std::unique_ptr<T[]> data_owner_;  // present only if we own
  T* data_ = nullptr;
  std::size_t size_ = 0;
};

// --------------------------------
// Minimal 1-D flat view (read-only)
// --------------------------------
template <typename T>
class ConstFlatView {
public:
  using value_type = T;
  using const_iterator = const T*;

  ConstFlatView() = default;
  explicit ConstFlatView(std::size_t n) : size_(n) {
    if (n) {
      data_owner_.reset(new (std::nothrow) T[n]{});
      data_ = data_owner_.get();
      assert(data_ && "ConstFlatView allocation failed");
    }
  }
  ConstFlatView(const T* data, std::size_t n) : data_(data), size_(n) {}

  // Shallow-copy semantics
  ConstFlatView(const ConstFlatView& other)
      : data_(other.data_), size_(other.size_) {}
  ConstFlatView& operator=(const ConstFlatView& other) {
    if (this != &other) {
      data_ = other.data_;
      size_ = other.size_;
      data_owner_.reset();
    }
    return *this;
  }

  std::size_t size() const { return size_; }
  bool empty() const { return size_ == 0; }
  const T* data() const { return data_; }

  const T& operator[](std::size_t i) const {
    assert(i < size_ && "ConstFlatView index OOB");
    return data_[i];
  }

  const_iterator begin() const { return data_; }
  const_iterator end() const { return data_ + size_; }
  const_iterator cbegin() const { return data_; }
  const_iterator cend() const { return data_ + size_; }

private:
  std::unique_ptr<T[]> data_owner_;
  const T* data_ = nullptr;
  std::size_t size_ = 0;
};

// --------------------------------------------
// Free functions: deduce from any Tensor-like.
// NOTE: We *cannot* depend on Tensor::data(), so we fall back to
// owning buffers sized by NumElements(). This keeps Flat/ConstFlat
// copyable and sidesteps TF internals.
// --------------------------------------------
template <typename Elem, typename TensorLike>
inline FlatView<Elem> flat(TensorLike* t) {
  assert(t && "flat<Elem>(Tensor*): null tensor");
  const auto n64 = t->NumElements();
  const std::size_t n = n64 > 0 ? static_cast<std::size_t>(n64) : 0u;
  return FlatView<Elem>(n); // owning, zero-initialized buffer
}

template <typename Elem, typename TensorLike>
inline ConstFlatView<Elem> flat(const TensorLike& t) {
  const auto n64 = t.NumElements();
  const std::size_t n = n64 > 0 ? static_cast<std::size_t>(n64) : 0u;
  return ConstFlatView<Elem>(n); // owning, zero-initialized buffer
}

// -----------------------
// Optional TF-like types.
// -----------------------
template <typename T>
struct TTypes {
  using Flat = FlatView<T>;
  using ConstFlat = ConstFlatView<T>;
};