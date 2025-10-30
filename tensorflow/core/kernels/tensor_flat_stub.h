// tensor_flat_stub.h — patched to avoid implicit memset in zero-initialization
// Root cause: `new T[n]{}` triggers value-initialization that the compiler often
// lowers to a bulk `memset`, which KLEE flags as OOB in some contexts.
// Fix: allocate with `new T[n]` (no implicit memset) and zero via a typed loop.

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

  // Own an internal zero-initialized buffer of n elements (no implicit memset).
  explicit FlatView(std::size_t n) : size_(n) {
    if (n) {
      // Avoid value-init (`{}`) to prevent compiler-emitted memset.
      T* raw = new (std::nothrow) T[n];
      data_owner_.reset(raw);
      data_ = raw;
      assert(data_ && "FlatView allocation failed");
      // Zero via a typed loop — KLEE is fine with element stores.
      for (std::size_t i = 0; i < n; ++i) raw[i] = T{};
    }
  }

  // Non-owning view over external memory.
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
      // Same avoidance of implicit memset
      T* raw = new (std::nothrow) T[n];
      data_owner_.reset(raw);
      data_ = raw;
      assert(data_ && "ConstFlatView allocation failed");
      for (std::size_t i = 0; i < n; ++i) raw[i] = T{};
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
// Keep owning buffers (since Tensor::data() is unavailable), but now
// they zero via typed loops instead of implicit memset.
// --------------------------------------------
template <typename Elem, typename TensorLike>
inline FlatView<Elem> flat(TensorLike* t) {
  assert(t && "flat<Elem>(Tensor*): null tensor");
  const auto n64 = t->NumElements();
  const std::size_t n = n64 > 0 ? static_cast<std::size_t>(n64) : 0u;
  return FlatView<Elem>(n);
}

template <typename Elem, typename TensorLike>
inline ConstFlatView<Elem> flat(const TensorLike& t) {
  const auto n64 = t.NumElements();
  const std::size_t n = n64 > 0 ? static_cast<std::size_t>(n64) : 0u;
  return ConstFlatView<Elem>(n);
}

// -----------------------
// Optional TF-like types.
// -----------------------
template <typename T>
struct TTypes {
  using Flat = FlatView<T>;
  using ConstFlat = ConstFlatView<T>;
};
