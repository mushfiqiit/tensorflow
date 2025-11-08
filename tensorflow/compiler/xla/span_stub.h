#pragma once
#include <cstddef>
#include <type_traits>
#include <initializer_list>
#include <iterator>
#include <algorithm>
#include <cassert>
#include <utility>

namespace absl {

// Minimal detection for containers with .data() and .size()
namespace span_detail {
template <typename C>
struct has_data_size {
 private:
  template <typename U>
  static auto test(int) -> decltype(
      (void)std::declval<U&>().data(),
      (void)std::declval<U&>().size(),
      std::true_type{});
  template <typename>
  static auto test(...) -> std::false_type;
 public:
  static constexpr bool value = decltype(test<C>(0))::value;
};
}  // namespace span_detail

template <typename T>
class Span {
 public:
  using element_type            = T;
  using value_type              = std::remove_cv_t<T>;
  using pointer                 = T*;
  using const_pointer           = const T*;
  using reference               = T&;
  using const_reference         = const T&;
  using iterator                = pointer;
  using const_iterator          = const_pointer;
  using reverse_iterator        = std::reverse_iterator<iterator>;
  using const_reverse_iterator  = std::reverse_iterator<const_iterator>;
  using size_type               = std::size_t;
  using difference_type         = std::ptrdiff_t;

  static constexpr size_type npos = static_cast<size_type>(-1);

  // Constructors
  constexpr Span() noexcept : ptr_(nullptr), len_(0) {}

  constexpr Span(pointer p, size_type n) noexcept : ptr_(p), len_(n) {}

  template <std::size_t N>
  constexpr Span(T (&arr)[N]) noexcept : ptr_(arr), len_(N) {}

  // Container -> mutable span (enabled only if T is non-const)
  template <
      typename C,
      typename std::enable_if<
          !std::is_const<T>::value && span_detail::has_data_size<C>::value,
          int>::type = 0>
  explicit Span(C& c) noexcept  // NOLINT(runtime/references)
      : ptr_(c.size() ? static_cast<pointer>(c.data()) : nullptr),
        len_(static_cast<size_type>(c.size())) {}

  // Container -> const span (enabled only if T is const)
  template <
      typename C,
      typename std::enable_if<
          std::is_const<T>::value && span_detail::has_data_size<const C>::value,
          int>::type = 0>
  /*implicit*/ Span(const C& c) noexcept
      : ptr_(c.size() ? static_cast<pointer>(c.data()) : nullptr),
        len_(static_cast<size_type>(c.size())) {}

  // initializer_list only when T is const
  template <typename U = T,
            typename std::enable_if<std::is_const<U>::value, int>::type = 0>
  /*implicit*/ Span(std::initializer_list<value_type> il) noexcept
      : ptr_(il.size() ? static_cast<pointer>(il.begin()) : nullptr),
        len_(il.size()) {}

  // Observers
  constexpr pointer data()  const noexcept { return ptr_; }
  constexpr size_type size() const noexcept { return len_; }
  constexpr size_type length() const noexcept { return len_; }
  constexpr bool empty()    const noexcept { return len_ == 0; }

  // Element access (no exceptions; assert in debug)
  constexpr reference operator[](size_type i) const noexcept {
    //assert(i < len_ && "absl::Span::operator[] out of bounds");
    return ptr_[i];
  }

  constexpr reference at(size_type i) const noexcept {
    assert(i < len_ && "absl::Span::at out of bounds");
    // In no-exceptions builds, return a valid reference if possible;
    // if the assert is stripped and i>=len_, this is UB just like operator[].
    return ptr_[i];
  }

  constexpr reference front() const noexcept {
    assert(len_ > 0 && "absl::Span::front on empty span");
    return *ptr_;
  }

  constexpr reference back() const noexcept {
    assert(len_ > 0 && "absl::Span::back on empty span");
    return *(ptr_ + (len_ - 1));
  }

  // Iterators
  constexpr iterator begin()        const noexcept { return ptr_; }
  constexpr const_iterator cbegin() const noexcept { return ptr_; }
  constexpr iterator end()          const noexcept { return ptr_ + len_; }
  constexpr const_iterator cend()   const noexcept { return ptr_ + len_; }

  constexpr reverse_iterator rbegin()        const noexcept { return reverse_iterator(end()); }
  constexpr const_reverse_iterator crbegin() const noexcept { return const_reverse_iterator(end()); }
  constexpr reverse_iterator rend()          const noexcept { return reverse_iterator(begin()); }
  constexpr const_reverse_iterator crend()   const noexcept { return const_reverse_iterator(begin()); }

  // Mutations
  void remove_prefix(size_type n) noexcept {
    assert(len_ >= n && "absl::Span::remove_prefix out of range");
    ptr_ += n;
    len_ -= n;
  }

  void remove_suffix(size_type n) noexcept {
    assert(len_ >= n && "absl::Span::remove_suffix out of range");
    len_ -= n;
  }

  // Slicing (no exceptions; asserts instead)
  constexpr Span subspan(size_type pos = 0, size_type count = npos) const noexcept {
    assert(pos <= len_ && "absl::Span::subspan pos > size()");
    if (pos > len_) return Span();  // safety in release if assert stripped
    const size_type avail = len_ - pos;
    const size_type rlen = (count == npos) ? avail : (std::min)(avail, count);
    return Span(ptr_ + pos, rlen);
  }

  constexpr Span first(size_type count) const noexcept {
    assert(count <= len_ && "absl::Span::first count > size()");
    if (count > len_) count = len_;  // safety in release if assert stripped
    return Span(ptr_, count);
  }

  constexpr Span last(size_type count) const noexcept {
    assert(count <= len_ && "absl::Span::last count > size()");
    if (count > len_) count = len_;  // safety in release if assert stripped
    return Span(ptr_ + (len_ - count), count);
  }

 private:
  pointer   ptr_;
  size_type len_;
};

}  // namespace absl