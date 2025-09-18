// tensorflow/core/platform/span_stub.h
#ifndef TENSORFLOW_CORE_PLATFORM_SPAN_STUB_H_
#define TENSORFLOW_CORE_PLATFORM_SPAN_STUB_H_

#include <algorithm>
#include <cassert>
#include <cstddef>
#include <initializer_list>
#include <iterator>   // reverse_iterator
#include <stdexcept>
#include <type_traits>
#include <utility>

#ifndef ABSL_TYPES_SPAN_H_
#define ABSL_TYPES_SPAN_H_ 1
#endif

#ifndef ABSL_ATTRIBUTE_VIEW
#define ABSL_ATTRIBUTE_VIEW
#endif
#ifndef ABSL_ATTRIBUTE_LIFETIME_BOUND
#define ABSL_ATTRIBUTE_LIFETIME_BOUND
#endif
#ifndef ABSL_HARDENING_ASSERT
#define ABSL_HARDENING_ASSERT(cond) assert(cond)
#endif
#ifndef ABSL_PREDICT_TRUE
#define ABSL_PREDICT_TRUE(x) (x)
#endif

namespace absl {

// minimal alias used below
template <typename T>
using remove_cv_t = typename std::remove_cv<T>::type;

namespace base_internal {
/* inline void ThrowStdOutOfRange(const char* what) {
#if defined(__cpp_exceptions)
  throw std::out_of_range(what ? what : "absl::Span out of range");
#else
  (void)what;
  assert(false && "absl::Span out of range");
#endif
} */
}  // namespace base_internal

namespace span_internal {

// A local void_t so we don't depend on C++17's std::void_t explicitly.
template <typename...>
using void_t = void;

// Detect presence of member data()/size() without touching std::data/size.
// This keeps detection SFINAE-friendly for incomplete types.
template <typename C, typename = void>
struct has_member_data : std::false_type {};
template <typename C>
struct has_member_data<C, void_t<decltype(std::declval<C&>().data())>>
    : std::true_type {};

template <typename C, typename = void>
struct has_member_size : std::false_type {};
template <typename C>
struct has_member_size<C, void_t<decltype(std::declval<const C&>().size())>>
    : std::true_type {};

// Accessors enabled only when the members exist.
template <typename C,
          typename std::enable_if<has_member_data<C>::value, int>::type = 0>
inline auto GetData(C& c) -> decltype(c.data()) { return c.data(); }
template <typename C,
          typename std::enable_if<has_member_data<const C>::value, int>::type = 0>
inline auto GetData(const C& c) -> decltype(c.data()) { return c.data(); }

// Array overloads
template <typename T, std::size_t N>
inline T* GetData(T (&a)[N]) noexcept { return a; }
template <typename T, std::size_t N>
inline const T* GetData(const T (&a)[N]) noexcept { return a; }

template <typename C,
          typename std::enable_if<has_member_size<C>::value, int>::type = 0>
inline std::size_t GetSize(const C& c) { return static_cast<std::size_t>(c.size()); }
template <typename T, std::size_t N>
inline std::size_t GetSize(const T (&)[N]) noexcept { return N; }

// Bool constants used to enable container constructors without instantiating
// invalid expressions for incomplete types.
template <typename T, typename C>
struct enable_from_container_mutable
    : std::integral_constant<
          bool, !std::is_const<T>::value &&
                    has_member_data<C>::value && has_member_size<C>::value &&
                    std::is_convertible<decltype(std::declval<C&>().data()), T*>::value> {};

template <typename T, typename C>
struct enable_from_container_const
    : std::integral_constant<
          bool, std::is_const<T>::value &&
                    has_member_data<const C>::value &&
                    has_member_size<const C>::value &&
                    std::is_convertible<
                        decltype(std::declval<const C&>().data()),
                        const remove_cv_t<T>*>::value> {};

}  // namespace span_internal

template <typename T>
class ABSL_ATTRIBUTE_VIEW Span {
 public:
  using element_type           = T;
  using value_type             = remove_cv_t<T>;
  using pointer                = T*;
  using const_pointer          = const T*;
  using reference              = T&;
  using const_reference        = const T&;
  using iterator               = pointer;
  using const_iterator         = const_pointer;
  using reverse_iterator       = std::reverse_iterator<iterator>;
  using const_reverse_iterator = std::reverse_iterator<const_iterator>;
  using size_type              = std::size_t;
  using difference_type        = std::ptrdiff_t;
  using absl_internal_is_view  = std::true_type;

  static constexpr size_type npos = static_cast<size_type>(~size_type{0});

  // ctors
  constexpr Span() noexcept : ptr_(nullptr), len_(0) {}
  constexpr Span(pointer p ABSL_ATTRIBUTE_LIFETIME_BOUND, size_type n) noexcept
      : ptr_(p), len_(n) {}

  template <std::size_t N>
  constexpr Span(T (&arr ABSL_ATTRIBUTE_LIFETIME_BOUND)[N]) noexcept
      : ptr_(arr), len_(N) {}

  // From mutable container (only when T is non-const and container has data/size)
  template <typename C,
            typename std::enable_if<
                span_internal::enable_from_container_mutable<T, C>::value,
                int>::type = 0>
  explicit Span(C& c ABSL_ATTRIBUTE_LIFETIME_BOUND) noexcept
      : ptr_(span_internal::GetData(c)), len_(span_internal::GetSize(c)) {}

  // From const container (only when T is const and container has data/size)
  template <typename C,
            typename std::enable_if<
                span_internal::enable_from_container_const<T, C>::value,
                int>::type = 0>
  /* implicit */ constexpr Span(const C& c ABSL_ATTRIBUTE_LIFETIME_BOUND) noexcept
      : ptr_(span_internal::GetData(c)), len_(span_internal::GetSize(c)) {}

  // From initializer_list (only for const T)
  template <typename U = T,
            typename std::enable_if<std::is_const<U>::value, int>::type = 0>
  /* implicit */ Span(std::initializer_list<value_type> il ABSL_ATTRIBUTE_LIFETIME_BOUND) noexcept
      : ptr_(il.begin()), len_(il.size()) {}

  // accessors
  constexpr pointer   data()   const noexcept { return ptr_; }
  constexpr size_type size()   const noexcept { return len_; }
  constexpr size_type length() const noexcept { return len_; }
  constexpr bool      empty()  const noexcept { return len_ == 0; }

  constexpr reference operator[](size_type i) const noexcept {
    ABSL_HARDENING_ASSERT(i < len_);
    return *(ptr_ + i);
  }

  constexpr reference at(size_type i) const {
    return ABSL_PREDICT_TRUE(i < len_) ? *(ptr_ + i)
                                       : (base_internal::ThrowStdOutOfRange("absl::Span::at"), *(ptr_ + i));
  }

  constexpr reference front() const noexcept {
    ABSL_HARDENING_ASSERT(len_ > 0);
    return *ptr_;
  }
  constexpr reference back() const noexcept {
    ABSL_HARDENING_ASSERT(len_ > 0);
    return *(ptr_ + (len_ - 1));
  }

  // iterators
  constexpr iterator       begin()  const noexcept { return ptr_; }
  constexpr const_iterator cbegin() const noexcept { return ptr_; }
  constexpr iterator       end()    const noexcept { return ptr_ + len_; }
  constexpr const_iterator cend()   const noexcept { return ptr_ + len_; }
  constexpr reverse_iterator       rbegin()  const noexcept { return reverse_iterator(end()); }
  constexpr const_reverse_iterator crbegin() const noexcept { return const_reverse_iterator(end()); }
  constexpr reverse_iterator       rend()    const noexcept { return reverse_iterator(begin()); }
  constexpr const_reverse_iterator crend()   const noexcept { return const_reverse_iterator(begin()); }

  // mutations
  void remove_prefix(size_type n) noexcept {
    ABSL_HARDENING_ASSERT(n <= len_);
    ptr_ += n; len_ -= n;
  }
  void remove_suffix(size_type n) noexcept {
    ABSL_HARDENING_ASSERT(n <= len_);
    len_ -= n;
  }

  // slicing
  constexpr Span subspan(size_type pos = 0, size_type count = npos) const {
    return (pos <= len_) ? Span(ptr_ + pos, (std::min)(len_ - pos, count))
                         : (base_internal::ThrowStdOutOfRange("absl::Span::subspan: pos > size()"), Span());
  }
  constexpr Span first(size_type n) const {
    return (n <= len_) ? Span(ptr_, n)
                       : (base_internal::ThrowStdOutOfRange("absl::Span::first: n > size()"), Span());
  }
  constexpr Span last(size_type n) const {
    return (n <= len_) ? Span(ptr_ + (len_ - n), n)
                       : (base_internal::ThrowStdOutOfRange("absl::Span::last: n > size()"), Span());
  }

  template <typename H>
  friend H AbslHashValue(H h, Span v) {
    return H::combine(H::combine_contiguous(std::move(h), v.data(), v.size()), v.size());
  }

 private:
  pointer   ptr_;
  size_type len_;
};

// light helpers
template <typename T>
inline Span<T> MakeSpan(T* ptr, std::size_t n) { return Span<T>(ptr, n); }
template <typename T, std::size_t N>
inline Span<T> MakeSpan(T (&arr)[N]) { return Span<T>(arr, N); }

}  // namespace absl

#endif  // TENSORFLOW_CORE_PLATFORM_SPAN_STUB_H_
