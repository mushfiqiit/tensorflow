#pragma once

#include <type_traits>
#include <utility>
#include <string>
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <cstddef>

// -----------------------------
// Minimal absl shims (header-only, no deps)
// -----------------------------
namespace absl {
struct in_place_t { explicit constexpr in_place_t() = default; };
#if __cplusplus >= 201703L
inline constexpr in_place_t in_place{};  // C++17 inline variable
#else
// Use internal linkage in pre-C++17 to avoid multiple definitions.
static constexpr in_place_t in_place{};  // C++11/14 safe in headers
#endif
}  // namespace absl

#ifndef ABSL_DEPRECATED
#  if defined(__GNUC__) || defined(__clang__)
#    define ABSL_DEPRECATED(msg) __attribute__((deprecated(msg)))
#  elif defined(_MSC_VER)
#    define ABSL_DEPRECATED(msg) __declspec(deprecated(msg))
#  else
#    define ABSL_DEPRECATED(msg)
#  endif
#endif

// -----------------------------
// Minimal Optional substitute (no <optional>)
// -----------------------------
template <typename T>
class MiniOptional {
 public:
  // constructors
  constexpr MiniOptional() noexcept : engaged_(false) {}

  MiniOptional(const MiniOptional& other) : engaged_(false) {
    if (other.engaged_) {
      emplace(*other);
    }
  }
  MiniOptional(MiniOptional&& other) noexcept(std::is_nothrow_move_constructible<T>::value)
      : engaged_(false) {
    if (other.engaged_) {
      emplace(std::move(*other));
      other.reset();
    }
  }

  MiniOptional& operator=(const MiniOptional& other) {
    if (this == &other) return *this;
    if (engaged_ && other.engaged_) {
      **this = *other;
    } else if (engaged_ && !other.engaged_) {
      reset();
    } else if (!engaged_ && other.engaged_) {
      emplace(*other);
    }
    return *this;
  }

  MiniOptional& operator=(MiniOptional&& other) noexcept(
      std::is_nothrow_move_constructible<T>::value && std::is_nothrow_move_assignable<T>::value) {
    if (this == &other) return *this;
    if (engaged_ && other.engaged_) {
      **this = std::move(*other);
      other.reset();
    } else if (engaged_ && !other.engaged_) {
      reset();
    } else if (!engaged_ && other.engaged_) {
      emplace(std::move(*other));
      other.reset();
    }
    return *this;
  }

  ~MiniOptional() { reset(); }

  template <typename... Args>
  T& emplace(Args&&... args) {
    reset();
    ::new (static_cast<void*>(&storage_)) T(std::forward<Args>(args)...);
    engaged_ = true;
    return **this;
  }

  void reset() noexcept {
    if (engaged_) {
      (**this).~T();
      engaged_ = false;
    }
  }

  bool has_value() const noexcept { return engaged_; }
  explicit operator bool() const noexcept { return engaged_; }

  T& operator*() & { return *ptr_(); }
  const T& operator*() const& { return *ptr_(); }
  T&& operator*() && { return std::move(*ptr_()); }
  const T&& operator*() const&& { return std::move(*ptr_()); }

  T* operator->() { return ptr_(); }
  const T* operator->() const { return ptr_(); }

 private:
  T* ptr_() { return reinterpret_cast<T*>(&storage_); }
  const T* ptr_() const { return reinterpret_cast<const T*>(&storage_); }

  typename std::aligned_storage<sizeof(T), alignof(T)>::type storage_;
  bool engaged_;
};

// -----------------------------
// Minimal Status stub
// -----------------------------
class Status {
 public:
  enum Code { kOk = 0, kUnknown = 1, kInternal = 13 };

  Status() : code_(kOk) {}
  static Status OK() { return Status(); }

  static Status Unknown(std::string msg = {}) { return Status(kUnknown, std::move(msg)); }
  static Status Internal(std::string msg = {}) { return Status(kInternal, std::move(msg)); }

  explicit Status(Code c, std::string msg = {}) : code_(c), message_(std::move(msg)) {}

  bool ok() const { return code_ == kOk; }
  Code code() const { return code_; }
  const std::string& message() const { return message_; }

  std::string ToString() const {
    return (code_ == kOk ? "OK" : std::to_string(static_cast<int>(code_))) +
           (message_.empty() ? std::string() : std::string(": ") + message_);
  }

 private:
  Code code_;
  std::string message_;
};

// -----------------------------
// internal_statusor shims
// -----------------------------
namespace internal_statusor {

// TraitsBase is a no-op tag base; exists to mirror upstream type layout.
template <bool /*copyable*/, bool /*movable*/>
struct TraitsBase {};

// Storage helper that provides protected members status_ and value_
// which the derived StatusOr<T> uses.
template <typename T>
class StatusOrData {
 protected:
  StatusOrData() : status_(Status::Unknown("UNINITIALIZED StatusOr")) {}

  explicit StatusOrData(const Status& s)
      : status_(s.ok() ? Status::Internal(
                             "Passed OK to StatusOr(Status). Using INTERNAL instead.")
                       : s) {}

  explicit StatusOrData(Status&& s)
      : status_(s.ok() ? Status::Internal(
                             "Passed OK to StatusOr(Status&&). Using INTERNAL instead.")
                       : std::move(s)) {}

  template <typename... Args>
  explicit StatusOrData(absl::in_place_t, Args&&... args)
      : status_(Status::OK()) {
    value_.emplace(std::forward<Args>(args)...);
  }

  explicit StatusOrData(const T& v) : status_(Status::OK()) { value_.emplace(v); }
  explicit StatusOrData(T&& v) : status_(Status::OK()) { value_.emplace(std::move(v)); }

  bool has_value() const { return static_cast<bool>(value_); }

  MiniOptional<T> value_;
  Status status_;
};

}  // namespace internal_statusor

// -----------------------------
// StatusOr<T>
// -----------------------------
template <typename T>
class StatusOr
    : private internal_statusor::StatusOrData<T>,
      private internal_statusor::TraitsBase<
          std::is_copy_constructible<T>::value,
          std::is_move_constructible<T>::value> {
  template <typename U>
  friend class StatusOr;

  using Base = internal_statusor::StatusOrData<T>;

 public:
  using element_type = T;  // DEPRECATED
  using value_type = T;

  // Default constructs with UNKNOWN (to catch `return {}` mistakes).
  explicit StatusOr() : Base(Status::Unknown("Default-constructed StatusOr")) {}

  // Copy/move defaults
  StatusOr(const StatusOr&) = default;
  StatusOr& operator=(const StatusOr&) = default;
  StatusOr(StatusOr&&) = default;
  StatusOr& operator=(StatusOr&&) = default;

  // Converting copy/move constructors (U -> T if convertible)
  template <typename U, typename std::enable_if<std::is_convertible<U, T>::value, int>::type = 0>
  StatusOr(const StatusOr<U>& other) {
    if (other.ok()) {
      this->value_.emplace(static_cast<T>(*other));
      this->status_ = Status::OK();
    } else {
      this->status_ = other.status();
    }
  }

  template <typename U, typename std::enable_if<std::is_convertible<U, T>::value, int>::type = 0>
  StatusOr(StatusOr<U>&& other) {
    if (other.ok()) {
      this->value_.emplace(static_cast<T>(std::move(*other)));
      this->status_ = Status::OK();
    } else {
      this->status_ = std::move(other.status());
    }
  }

  // Converting assignments
  template <typename U, typename std::enable_if<std::is_convertible<U, T>::value, int>::type = 0>
  StatusOr& operator=(const StatusOr<U>& other) {
    if (other.ok()) {
      this->value_.emplace(static_cast<T>(*other));
      this->status_ = Status::OK();
    } else {
      this->value_.reset();
      this->status_ = other.status();
    }
    return *this;
  }

  template <typename U, typename std::enable_if<std::is_convertible<U, T>::value, int>::type = 0>
  StatusOr& operator=(StatusOr<U>&& other) {
    if (other.ok()) {
      this->value_.emplace(static_cast<T>(std::move(*other)));
      this->status_ = Status::OK();
    } else {
      this->value_.reset();
      this->status_ = std::move(other.status());
    }
    return *this;
  }

  // In-place construction of value
  template <typename... Args>
  explicit StatusOr(absl::in_place_t, Args&&... args)
      : Base(absl::in_place, std::forward<Args>(args)...) {}

  // From value
  StatusOr(const T& value) : Base(value) {}
  StatusOr(T&& value) : Base(std::move(value)) {}

  // From status; OK becomes INTERNAL fallback
  StatusOr(const Status& status) : Base(status) {}
  StatusOr(Status&& status) : Base(std::move(status)) {}

  StatusOr& operator=(const Status& status) {
    this->value_.reset();
    this->status_ = status.ok()
                        ? Status::Internal(
                              "Assigned OK to StatusOr(status). Using INTERNAL instead.")
                        : status;
    return *this;
  }

  StatusOr& operator=(Status&& status) {
    this->value_.reset();
    this->status_ = status.ok()
                        ? Status::Internal(
                              "Assigned OK to StatusOr(Status&&). Using INTERNAL instead.")
                        : std::move(status);
    return *this;
  }

  // ok()
  bool ok() const { return this->status_.ok(); }

  // status accessors
  const Status& status() const& { return this->status_; }
  Status status() && { return std::move(this->status_); }

  // value() APIs (ref-qualified)
  const T& value() const& { CheckOkOrDie_("value() const&"); return *this->value_; }
  T& value() & { CheckOkOrDie_("value() &"); return *this->value_; }
  const T&& value() const&& { CheckOkOrDie_("value() const&&"); return std::move(*this->value_); }
  T&& value() && { CheckOkOrDie_("value() &&"); return std::move(*this->value_); }

  // ValueOrDie (deprecated)
  const T& ValueOrDie() const& { return value(); }
  T& ValueOrDie() & { return value(); }
  const T&& ValueOrDie() const&& { return std::move(value()); }
  T&& ValueOrDie() && { return std::move(value()); }

  // operator*
  const T& operator*() const& { return value(); }
  T& operator*() & { return value(); }
  const T&& operator*() const&& { return std::move(value()); }
  T&& operator*() && { return std::move(value()); }

  // operator->
  const T* operator->() const { CheckOkOrDie_("operator->() const"); return &(*this->value_); }
  T* operator->() { CheckOkOrDie_("operator->()"); return &(*this->value_); }

  // Deprecated consume
  T ABSL_DEPRECATED("Use `value()` instead.") ConsumeValueOrDie() { return std::move(ValueOrDie()); }

  void IgnoreError() const {}

 private:
  void CheckOkOrDie_(const char* where) const {
    if (!ok()) {
      std::fprintf(stderr, "FATAL: StatusOr used in %s but status not OK: %s\n",
                   where, this->status_.ToString().c_str());
      std::fflush(stderr);
      std::abort();
    }
  }
};

#define TF_STATUS_MACROS_CONCAT_NAME(x, y) TF_STATUS_MACROS_CONCAT_IMPL(x, y)
#define TF_STATUS_MACROS_CONCAT_IMPL(x, y) x##y

#define TF_ASSIGN_OR_RETURN(lhs, rexpr) \
  TF_ASSIGN_OR_RETURN_IMPL(             \
      TF_STATUS_MACROS_CONCAT_NAME(_status_or_value, __COUNTER__), lhs, rexpr)

#define TF_ASSIGN_OR_RETURN_IMPL(statusor, lhs, rexpr) \
  auto statusor = (rexpr);                             \
  if ((!statusor.ok())) {              \
    return statusor.status();                          \
  }                                                    \
  lhs = std::move(statusor).ValueOrDie()