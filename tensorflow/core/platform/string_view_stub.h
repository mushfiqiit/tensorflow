// absl/strings/string_view.h  (stub)
#ifndef ABSL_STRINGS_STRING_VIEW_H_
#define ABSL_STRINGS_STRING_VIEW_H_

#include <algorithm>
#include <cstddef>
#include <cstring>
#include <iterator>
#include <limits>
#include <stdexcept>
#include <string>
#include <type_traits>

// ----- Minimal Abseil-style annotations/macros (no-ops here) -----
#ifndef ABSL_ATTRIBUTE_VIEW
#define ABSL_ATTRIBUTE_VIEW
#endif
#ifndef ABSL_ATTRIBUTE_LIFETIME_BOUND
#define ABSL_ATTRIBUTE_LIFETIME_BOUND
#endif
#ifndef ABSL_PREDICT_FALSE
#define ABSL_PREDICT_FALSE(x) (x)
#endif
#ifndef ABSL_HARDENING_ASSERT
#include <cassert>
#define ABSL_HARDENING_ASSERT(x) assert(x)
#endif
#ifndef ABSL_INTERNAL_CPLUSPLUS_LANG
#define ABSL_INTERNAL_CPLUSPLUS_LANG __cplusplus
#endif
#ifndef ABSL_INTERNAL_STRING_VIEW_MEMCMP
#define ABSL_INTERNAL_STRING_VIEW_MEMCMP std::memcmp
#endif

namespace absl {

// Annotations used in the original; alias to raw pointer for a stub.
template <typename T>
using Nullable = T;
template <typename T>
using Nonnull = T;

namespace base_internal {
inline void ThrowStdOutOfRange(const char* what) {
#if defined(__cpp_exceptions) || defined(__EXCEPTIONS)
  throw std::out_of_range(what);
#else
  (void)what;
  // In no-exception builds, terminate.
  std::terminate();
#endif
}
}  // namespace base_internal

class ABSL_ATTRIBUTE_VIEW string_view {
 public:
  using traits_type            = std::char_traits<char>;
  using value_type             = char;
  using pointer                = absl::Nullable<char*>;
  using const_pointer          = absl::Nullable<const char*>;
  using reference              = char&;
  using const_reference        = const char&;
  using const_iterator         = absl::Nullable<const char*>;
  using iterator               = const_iterator;
  using const_reverse_iterator = std::reverse_iterator<const_iterator>;
  using reverse_iterator       = const_reverse_iterator;
  using size_type              = std::size_t;
  using difference_type        = std::ptrdiff_t;
  using absl_internal_is_view  = std::true_type;

  static constexpr size_type npos = static_cast<size_type>(-1);

  // Null/empty view
  constexpr string_view() noexcept : ptr_(nullptr), length_(0) {}

  // From std::basic_string
  template <typename Allocator>
  string_view(  // NOLINT(runtime/explicit)
      const std::basic_string<char, std::char_traits<char>, Allocator>& str
          ABSL_ATTRIBUTE_LIFETIME_BOUND) noexcept
      : string_view(str.data(), str.size(), SkipCheckLengthTag{}) {}

  // From NUL-terminated C string (nonnull)
  constexpr string_view(  // NOLINT(runtime/explicit)
      absl::Nonnull<const char*> str)
      : ptr_(str), length_(str ? StrlenInternal(str) : 0) {}

  // From pointer+length (nullable pointer allowed if len==0)
  constexpr string_view(absl::Nullable<const char*> data, size_type len)
      : ptr_(data), length_(CheckLengthInternal(len)) {}

  constexpr string_view(const string_view&) noexcept = default;
  string_view& operator=(const string_view&) noexcept = default;

  // Iterators
  constexpr const_iterator begin()  const noexcept { return ptr_; }
  constexpr const_iterator end()    const noexcept { return ptr_ + length_; }
  constexpr const_iterator cbegin() const noexcept { return begin(); }
  constexpr const_iterator cend()   const noexcept { return end(); }

  const_reverse_iterator rbegin() const noexcept { return const_reverse_iterator(end()); }
  const_reverse_iterator rend()   const noexcept { return const_reverse_iterator(begin()); }
  const_reverse_iterator crbegin() const noexcept { return rbegin(); }
  const_reverse_iterator crend()   const noexcept { return rend(); }

  // Capacity
  constexpr size_type size()     const noexcept { return length_; }
  constexpr size_type length()   const noexcept { return size(); }
  constexpr size_type max_size() const noexcept { return kMaxSize; }
  constexpr bool empty()         const noexcept { return length_ == 0; }

  // Element access
  constexpr const_reference operator[](size_type i) const {
    ABSL_HARDENING_ASSERT(i < size());
    return ptr_[i];
  }
  constexpr const_reference at(size_type i) const {
    if (ABSL_PREDICT_FALSE(i >= size())) {
      base_internal::ThrowStdOutOfRange("absl::string_view::at");
    }
    return ptr_[i];
  }
  constexpr const_reference front() const {
    ABSL_HARDENING_ASSERT(!empty());
    return ptr_[0];
  }
  constexpr const_reference back() const {
    ABSL_HARDENING_ASSERT(!empty());
    return ptr_[size() - 1];
  }
  constexpr const_pointer data() const noexcept { return ptr_; }

  // Modifiers
  constexpr void remove_prefix(size_type n) {
    ABSL_HARDENING_ASSERT(n <= length_);
    ptr_ += n;
    length_ -= n;
  }
  constexpr void remove_suffix(size_type n) {
    ABSL_HARDENING_ASSERT(n <= length_);
    length_ -= n;
  }
  constexpr void swap(string_view& s) noexcept {
    const char* p = ptr_;
    size_type   l = length_;
    ptr_ = s.ptr_;
    length_ = s.length_;
    s.ptr_ = p;
    s.length_ = l;
  }

  // Conversion to std::basic_string
  template <typename A>
  explicit operator std::basic_string<char, traits_type, A>() const {
    if (!data()) return {};
    return std::basic_string<char, traits_type, A>(data(), size());
  }

  // Copy out to buffer
  size_type copy(char* buf, size_type n, size_type pos = 0) const {
    if (ABSL_PREDICT_FALSE(pos > length_)) {
      base_internal::ThrowStdOutOfRange("absl::string_view::copy");
    }
    size_type rlen = (std::min)(length_ - pos, n);
    if (rlen > 0) traits_type::copy(buf, ptr_ + pos, rlen);
    return rlen;
  }

  // Substring view
  constexpr string_view substr(size_type pos = 0, size_type n = npos) const {
    if (ABSL_PREDICT_FALSE(pos > length_)) {
      base_internal::ThrowStdOutOfRange("absl::string_view::substr");
    }
    return string_view(ptr_ + pos, Min(n, length_ - pos));
  }

  // Compare
  constexpr int compare(string_view x) const noexcept {
    return CompareImpl(length_, x.length_,
                       Min(length_, x.length_) == 0
                           ? 0
                           : ABSL_INTERNAL_STRING_VIEW_MEMCMP(
                                 ptr_, x.ptr_, Min(length_, x.length_)));
  }
  constexpr int compare(size_type pos1, size_type count1, string_view v) const {
    return substr(pos1, count1).compare(v);
  }
  constexpr int compare(size_type pos1, size_type count1, string_view v,
                        size_type pos2, size_type count2) const {
    return substr(pos1, count1).compare(v.substr(pos2, count2));
  }
  constexpr int compare(absl::Nonnull<const char*> s) const {
    return compare(string_view(s));
  }
  constexpr int compare(size_type pos1, size_type count1,
                        absl::Nonnull<const char*> s) const {
    return substr(pos1, count1).compare(string_view(s));
  }
  constexpr int compare(size_type pos1, size_type count1,
                        absl::Nonnull<const char*> s, size_type count2) const {
    return substr(pos1, count1).compare(string_view(s, count2));
  }

  // Find
  size_type find(string_view s, size_type pos = 0) const noexcept {
    if (pos > length_) return npos;
    if (s.length_ == 0) return pos;
    if (s.length_ > length_ - pos) return npos;
    const size_type last = length_ - s.length_;
    for (size_type i = pos; i <= last; ++i) {
      if (ABSL_INTERNAL_STRING_VIEW_MEMCMP(ptr_ + i, s.ptr_, s.length_) == 0) return i;
    }
    return npos;
  }
  size_type find(char c, size_type pos = 0) const noexcept {
    if (pos > length_) return npos;
    const char* p = traits_type::find(ptr_ + pos, length_ - pos, c);
    return p ? static_cast<size_type>(p - ptr_) : npos;
  }
  size_type find(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return find(string_view(s, count), pos);
  }
  size_type find(absl::Nonnull<const char*> s, size_type pos = 0) const {
    return find(string_view(s), pos);
  }

  // RFind
  size_type rfind(string_view s, size_type pos = npos) const noexcept {
    if (s.length_ == 0) return (std::min)(pos, length_);
    if (s.length_ > length_) return npos;
    size_type end = (pos == npos || pos > length_ - s.length_) ? (length_ - s.length_) : pos;
    for (size_type i = end + 1; i-- > 0;) {
      if (ABSL_INTERNAL_STRING_VIEW_MEMCMP(ptr_ + i, s.ptr_, s.length_) == 0) return i;
      if (i == 0) break;
    }
    return npos;
  }
  size_type rfind(char c, size_type pos = npos) const noexcept {
    if (length_ == 0) return npos;
    size_type i = (pos == npos || pos >= length_) ? (length_ - 1) : pos;
    for (;;){
      if (ptr_[i] == c) return i;
      if (i == 0) break;
      --i;
    }
    return npos;
  }
  size_type rfind(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return rfind(string_view(s, count), pos);
  }
  size_type rfind(absl::Nonnull<const char*> s, size_type pos = npos) const {
    return rfind(string_view(s), pos);
  }

  // Find first/last of
  size_type find_first_of(string_view s, size_type pos = 0) const noexcept {
    if (pos >= length_ || s.length_ == 0) return npos;
    for (size_type i = pos; i < length_; ++i) {
      if (traits_type::find(s.ptr_, s.length_, ptr_[i])) return i;
    }
    return npos;
  }
  size_type find_first_of(char c, size_type pos = 0) const noexcept { return find(c, pos); }
  size_type find_first_of(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return find_first_of(string_view(s, count), pos);
  }
  size_type find_first_of(absl::Nonnull<const char*> s, size_type pos = 0) const {
    return find_first_of(string_view(s), pos);
  }

  size_type find_last_of(string_view s, size_type pos = npos) const noexcept {
    if (length_ == 0 || s.length_ == 0) return npos;
    size_type i = (pos == npos || pos >= length_) ? (length_ - 1) : pos;
    for (;;){
      if (traits_type::find(s.ptr_, s.length_, ptr_[i])) return i;
      if (i == 0) break;
      --i;
    }
    return npos;
  }
  size_type find_last_of(char c, size_type pos = npos) const noexcept { return rfind(c, pos); }
  size_type find_last_of(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return find_last_of(string_view(s, count), pos);
  }
  size_type find_last_of(absl::Nonnull<const char*> s, size_type pos = npos) const {
    return find_last_of(string_view(s), pos);
  }

  // Find first/last not of
  size_type find_first_not_of(string_view s, size_type pos = 0) const noexcept {
    if (pos >= length_) return npos;
    for (size_type i = pos; i < length_; ++i) {
      if (!traits_type::find(s.ptr_, s.length_, ptr_[i])) return i;
    }
    return npos;
  }
  size_type find_first_not_of(char c, size_type pos = 0) const noexcept {
    if (pos >= length_) return npos;
    for (size_type i = pos; i < length_; ++i) if (ptr_[i] != c) return i;
    return npos;
  }
  size_type find_first_not_of(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return find_first_not_of(string_view(s, count), pos);
  }
  size_type find_first_not_of(absl::Nonnull<const char*> s, size_type pos = 0) const {
    return find_first_not_of(string_view(s), pos);
  }

  size_type find_last_not_of(string_view s, size_type pos = npos) const noexcept {
    if (length_ == 0) return npos;
    size_type i = (pos == npos || pos >= length_) ? (length_ - 1) : pos;
    for (;;){
      if (!traits_type::find(s.ptr_, s.length_, ptr_[i])) return i;
      if (i == 0) break;
      --i;
    }
    return npos;
  }
  size_type find_last_not_of(char c, size_type pos = npos) const noexcept {
    if (length_ == 0) return npos;
    size_type i = (pos == npos || pos >= length_) ? (length_ - 1) : pos;
    for (;;){
      if (ptr_[i] != c) return i;
      if (i == 0) break;
      --i;
    }
    return npos;
  }
  size_type find_last_not_of(absl::Nonnull<const char*> s, size_type pos, size_type count) const {
    return find_last_not_of(string_view(s, count), pos);
  }
  size_type find_last_not_of(absl::Nonnull<const char*> s, size_type pos = npos) const {
    return find_last_not_of(string_view(s), pos);
  }

#if ABSL_INTERNAL_CPLUSPLUS_LANG >= 202002L
  // C++20 convenience APIs
  constexpr bool starts_with(string_view s) const noexcept {
    return s.empty() ||
           (size() >= s.size() &&
            ABSL_INTERNAL_STRING_VIEW_MEMCMP(data(), s.data(), s.size()) == 0);
  }
  constexpr bool starts_with(char c) const noexcept {
    return !empty() && front() == c;
  }
  constexpr bool starts_with(const char* s) const { return starts_with(string_view(s)); }

  constexpr bool ends_with(string_view s) const noexcept {
    return s.empty() ||
           (size() >= s.size() &&
            ABSL_INTERNAL_STRING_VIEW_MEMCMP(data() + (size() - s.size()),
                                             s.data(), s.size()) == 0);
  }
  constexpr bool ends_with(char c) const noexcept { return !empty() && back() == c; }
  constexpr bool ends_with(const char* s) const { return ends_with(string_view(s)); }
#endif

 private:
  struct SkipCheckLengthTag {};
  constexpr string_view(absl::Nullable<const char*> data, size_type len,
                        SkipCheckLengthTag) noexcept
      : ptr_(data), length_(len) {}

  static constexpr size_type kMaxSize =
      (std::numeric_limits<difference_type>::max)();

  static constexpr size_type CheckLengthInternal(size_type len) {
    ABSL_HARDENING_ASSERT(len <= kMaxSize);
    return len;
  }

  static constexpr size_type StrlenInternal(absl::Nonnull<const char*> str) {
    // constexpr-friendly strlen
    const char* p = str;
    while (*p) ++p;
    return static_cast<size_type>(p - str);
  }

  static constexpr size_t Min(size_type a, size_type b) {
    return a < b ? a : b;
  }

  static constexpr int CompareImpl(size_type a, size_type b, int cmp) {
    return cmp == 0 ? static_cast<int>(a > b) - static_cast<int>(a < b)
                    : (cmp < 0 ? -1 : 1);
  }

  absl::Nullable<const char*> ptr_;
  size_type length_;
};

}  // namespace absl

#endif  // ABSL_STRINGS_STRING_VIEW_H_