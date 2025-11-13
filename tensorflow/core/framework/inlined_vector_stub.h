#pragma once
#pragma once
#ifndef ABSL_CONTAINER_INLINED_VECTOR_H_
#define ABSL_CONTAINER_INLINED_VECTOR_H_
#include <cstddef>
#include <cstdint>
#include <initializer_list>
#include <memory>
#include <new>
#include <type_traits>
#include <utility>
#include <algorithm>

namespace absl {
  inline namespace lts_20250127 {

// A minimal drop-in for absl::InlinedVector<T, N, A=std::allocator<T>>.
//
// This is a pragmatic, dependency-free small-vector implementation sufficient
// for TensorFlow's status.h usage (push_back/emplace_back, size/capacity,
// iterators, clear, reserve, shrink_to_fit, swap, copy/move).
//
// It is NOT a full reimplementation of Abseil's container. Do not use for
// performance-critical or standards-accuracy-sensitive code.
template <typename T, std::size_t N, typename A = std::allocator<T>>
class InlinedVector {
  static_assert(N > 0, "InlinedVector requires N > 0");

 public:
  // ---- public member types (subset) ----
  using value_type             = T;
  using allocator_type         = A;
  using size_type              = std::size_t;
  using difference_type        = std::ptrdiff_t;
  using reference              = T&;
  using const_reference        = const T&;
  using pointer                = T*;
  using const_pointer          = const T*;
  using iterator               = T*;
  using const_iterator         = const T*;
  using reverse_iterator       = std::reverse_iterator<iterator>;
  using const_reverse_iterator = std::reverse_iterator<const_iterator>;

  // ---- ctors/dtor ----
  InlinedVector() noexcept(std::is_nothrow_default_constructible<A>::value)
      : alloc_(), heap_(nullptr), size_(0), cap_(N) {}

  explicit InlinedVector(const allocator_type& a) noexcept
      : alloc_(a), heap_(nullptr), size_(0), cap_(N) {}

  explicit InlinedVector(size_type n, const allocator_type& a = allocator_type())
      : InlinedVector(a) {
    resize(n);
  }

  InlinedVector(size_type n, const_reference v,
                const allocator_type& a = allocator_type())
      : InlinedVector(a) {
    assign(n, v);
  }

  InlinedVector(std::initializer_list<value_type> il,
                const allocator_type& a = allocator_type())
      : InlinedVector(a) {
    assign(il.begin(), il.end());
  }

  InlinedVector(const InlinedVector& other)
      : InlinedVector(other.alloc_) {
    assign(other.begin(), other.end());
  }

  InlinedVector(const InlinedVector& other, const allocator_type& a)
      : InlinedVector(a) {
    assign(other.begin(), other.end());
  }

  InlinedVector(InlinedVector&& other) noexcept
      : alloc_(std::move(other.alloc_)),
        heap_(nullptr),
        size_(0),
        cap_(N) {
    move_from(std::move(other));
  }

  InlinedVector(InlinedVector&& other, const allocator_type& a) noexcept
      : alloc_(a), heap_(nullptr), size_(0), cap_(N) {
    // If allocators compare equal we can steal heap buffer, otherwise move.
    if (a == other.alloc_) {
      move_from(std::move(other));
    } else {
      assign(std::make_move_iterator(other.begin()),
             std::make_move_iterator(other.end()));
      other.clear();
    }
  }

  template <typename InputIt,
            typename = std::enable_if_t<!std::is_integral<InputIt>::value>>
  InlinedVector(InputIt first, InputIt last,
                const allocator_type& a = allocator_type())
      : InlinedVector(a) {
    assign(first, last);
  }

  ~InlinedVector() {
    destroy_range(data(), size_);
    if (is_heap()) deallocate_heap();
  }

  // ---- basic observers ----
  bool empty() const noexcept { return size_ == 0; }
  size_type size() const noexcept { return size_; }
  size_type capacity() const noexcept { return is_heap() ? cap_ : N; }
  allocator_type get_allocator() const { return alloc_; }

  // ---- element access ----
  reference operator[](size_type i)             { return data()[i]; }
  const_reference operator[](size_type i) const { return data()[i]; }

  reference front()       { return *data(); }
  const_reference front() const { return *data(); }
  reference back()        { return data()[size_ - 1]; }
  const_reference back() const  { return data()[size_ - 1]; }

  pointer data() noexcept {
    return is_heap() ? heap_ : reinterpret_cast<pointer>(inline_storage_);
  }
  const_pointer data() const noexcept {
    return is_heap() ? heap_ : reinterpret_cast<const_pointer>(inline_storage_);
  }

  // ---- iterators ----
  iterator begin() noexcept { return data(); }
  const_iterator begin() const noexcept { return data(); }
  const_iterator cbegin() const noexcept { return data(); }

  iterator end() noexcept { return data() + size_; }
  const_iterator end() const noexcept { return data() + size_; }
  const_iterator cend() const noexcept { return data() + size_; }

  reverse_iterator rbegin() noexcept { return reverse_iterator(end()); }
  const_reverse_iterator rbegin() const noexcept { return const_reverse_iterator(end()); }
  reverse_iterator rend() noexcept { return reverse_iterator(begin()); }
  const_reverse_iterator rend() const noexcept { return const_reverse_iterator(begin()); }

  // ---- modifiers ----
  void clear() noexcept {
    destroy_range(data(), size_);
    size_ = 0;
    // keep capacity/buffer; shrink_to_fit() moves back inline
  }

  void resize(size_type n) {
    if (n < size_) {
      // destroy tail
      destroy_range(data() + n, size_ - n);
      size_ = n;
    } else if (n > size_) {
      reserve(n);
      // value-initialize new elements
      for (; size_ < n; ++size_) {
        ::new (static_cast<void*>(data() + size_)) T();
      }
    }
  }

  void resize(size_type n, const_reference v) {
    if (n < size_) {
      destroy_range(data() + n, size_ - n);
      size_ = n;
    } else if (n > size_) {
      reserve(n);
      for (; size_ < n; ++size_) {
        ::new (static_cast<void*>(data() + size_)) T(v);
      }
    }
  }

  template <typename InputIt>
  void assign(InputIt first, InputIt last) {
    clear();
    for (; first != last; ++first) push_back(*first);
  }

  void assign(size_type n, const_reference v) {
    clear();
    reserve(n);
    for (size_type i = 0; i < n; ++i) emplace_back(v);
  }

  InlinedVector& operator=(const InlinedVector& other) {
    if (this != &other) assign(other.begin(), other.end());
    return *this;
  }

  InlinedVector& operator=(InlinedVector&& other) {
    if (this != &other) {
      clear();
      if (alloc_ == other.alloc_) {
        if (is_heap()) deallocate_heap();
        move_from(std::move(other));
      } else {
        assign(std::make_move_iterator(other.begin()),
               std::make_move_iterator(other.end()));
        other.clear();
      }
    }
    return *this;
  }

  template <typename... Args>
  reference emplace_back(Args&&... args) {
    if (size_ == capacity()) reserve(next_capacity(size_ + 1));
    ::new (static_cast<void*>(data() + size_)) T(std::forward<Args>(args)...);
    ++size_;
    return back();
  }

  void push_back(const_reference v) { (void)emplace_back(v); }
  void push_back(value_type&& v)    { (void)emplace_back(std::move(v)); }

  void pop_back() {
    // caller must ensure !empty()
    --size_;
    (data() + size_)->~T();
  }

  // insert/erase minimal variants used occasionally; feel free to expand later.
  iterator erase(const_iterator pos) {
    size_type idx = static_cast<size_type>(pos - cbegin());
    (data() + idx)->~T();
    for (size_type i = idx; i + 1 < size_; ++i) {
      ::new (static_cast<void*>(data() + i)) T(std::move(*(data() + i + 1)));
      (data() + i + 1)->~T();
    }
    --size_;
    return data() + idx;
  }

  iterator erase(const_iterator first, const_iterator last) {
    size_type i_first = static_cast<size_type>(first - cbegin());
    size_type i_last  = static_cast<size_type>(last  - cbegin());
    if (i_first >= i_last) return data() + i_first;
    size_type cnt = i_last - i_first;
    // destroy [i_first, i_last)
    for (size_type i = 0; i < cnt; ++i) (data() + i_first + i)->~T();
    // move tail forward
    for (size_type i = i_last; i < size_; ++i) {
      ::new (static_cast<void*>(data() + (i - cnt))) T(std::move(*(data() + i)));
      (data() + i)->~T();
    }
    size_ -= cnt;
    return data() + i_first;
  }

  void reserve(size_type n) {
    if (n <= capacity()) return;
    grow_heap(n);
  }

  void shrink_to_fit() {
    if (!is_heap()) return;
    if (size_ <= N) {
      // move back to inline storage
      T* old = heap_;
      size_type old_size = size_;
      destroy_range(inline_ptr(), 0); // no-op
      for (size_type i = 0; i < old_size; ++i) {
        ::new (static_cast<void*>(inline_ptr() + i)) T(std::move(old[i]));
        old[i].~T();
      }
      deallocate_heap();
      heap_ = nullptr;
      cap_  = N;
    } else if (size_ < cap_) {
      // shrink heap allocation to size_
      T* newbuf = allocate(size_);
      // move
      for (size_type i = 0; i < size_; ++i) {
        ::new (static_cast<void*>(newbuf + i)) T(std::move(heap_[i]));
        heap_[i].~T();
      }
      deallocate_heap();
      heap_ = newbuf;
      cap_  = size_;
    }
  }

  void swap(InlinedVector& other) {
    if (this == &other) return;
    using std::swap;
    if (is_heap() && other.is_heap()) {
      swap(heap_, other.heap_);
      swap(size_, other.size_);
      swap(cap_,  other.cap_);
      swap(alloc_, other.alloc_);
    } else if (!is_heap() && !other.is_heap()) {
      // swap inline contents element-wise (sizes may differ)
      InlinedVector tmp(std::move(other));
      other = std::move(*this);
      *this = std::move(tmp);
    } else {
      // one heap, one inline → move through temp
      InlinedVector tmp(std::move(other));
      other = std::move(*this);
      *this = std::move(tmp);
    }
  }

 private:
  // ---- helpers ----
  bool is_heap() const noexcept { return heap_ != nullptr; }
  pointer inline_ptr() noexcept {
    return reinterpret_cast<pointer>(inline_storage_);
  }
  const_pointer inline_ptr() const noexcept {
    return reinterpret_cast<const_pointer>(inline_storage_);
  }

  static size_type next_capacity(size_type need) {
    size_type cap = need <= N ? N : N;
    cap = std::max<size_type>(capacity_up(need), need);
    return cap;
  }
  static size_type capacity_up(size_type cur) {
    // simple growth policy: double until >= cur
    size_type c = N ? N : 1;
    while (c < cur) c *= 2;
    return c;
  }

  void move_from(InlinedVector&& other) noexcept {
    if (other.is_heap()) {
      heap_ = other.heap_;
      size_ = other.size_;
      cap_  = other.cap_;
      other.heap_ = nullptr;
      other.size_ = 0;
      other.cap_  = N;
    } else {
      // move inline elements
      for (size_type i = 0; i < other.size_; ++i) {
        ::new (static_cast<void*>(inline_ptr() + i))
            T(std::move(other.inline_ptr()[i]));
        other.inline_ptr()[i].~T();
      }
      size_ = other.size_;
      // cap_ stays N
      other.size_ = 0;
    }
  }

  static void destroy_range(pointer p, size_type n) noexcept {
    for (size_type i = 0; i < n; ++i) (p + i)->~T();
  }

  T* allocate(size_type n) {
    return std::allocator_traits<A>::allocate(alloc_, n);
  }
  void deallocate_heap() noexcept {
    if (!heap_) return;
    std::allocator_traits<A>::deallocate(alloc_, heap_, cap_);
    heap_ = nullptr;
    cap_  = N;
  }

  void grow_heap(size_type new_cap) {
    size_type target = std::max<size_type>(new_cap, capacity_up(capacity() ? capacity() * 2 : N));
    T* newbuf = allocate(target);
    // move-construct into new buffer
    for (size_type i = 0; i < size_; ++i) {
      ::new (static_cast<void*>(newbuf + i)) T(std::move(data()[i]));
      data()[i].~T();
    }
    if (is_heap()) {
      deallocate_heap();
    }
    heap_ = newbuf;
    cap_  = target;
  }

  // ---- members ----
  allocator_type alloc_;
  T* heap_;                // nullptr means using inline storage
  size_type size_;
  size_type cap_;          // valid only if heap_ != nullptr; otherwise N
  alignas(T) unsigned char inline_storage_[sizeof(T) * (N > 0 ? N : 1)];
};

}
} // namespace absl

namespace tensorflow {
namespace gtl {

// Match TF’s expected signature: <T, N [, Allocator]>
template <typename T, std::size_t N, typename A = std::allocator<T>>
using InlinedVector = ::absl::lts_20250127::InlinedVector<T, N, A>;

}  // namespace gtl
}  // namespace tensorflow
#endif