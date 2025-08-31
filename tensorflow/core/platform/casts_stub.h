// tensorflow/core/platform/casts_stub.h
#ifndef TENSORFLOW_CORE_PLATFORM_CASTS_STUB_H_
#define TENSORFLOW_CORE_PLATFORM_CASTS_STUB_H_

#include <type_traits>
#include <cassert>

// Pointer version: e.g. down_cast<Derived*>(base_ptr)
template <typename To, typename From>
inline To down_cast(From* f) {
  static_assert(std::is_pointer<To>::value, "To must be a pointer type");
  using ToP = typename std::remove_cv<typename std::remove_pointer<To>::type>::type;
  using FromP = typename std::remove_cv<typename std::remove_pointer<From*>::type>::type;

  static_assert(std::is_base_of<FromP, ToP>::value || std::is_base_of<ToP, FromP>::value,
                "down_cast requires related types");

#if !defined(__GNUC__) || defined(__GXX_RTTI)
  // If RTTI is enabled and f is non-null, sanity-check the cast in debug.
#ifndef NDEBUG
  if (f != nullptr) {
    (void)dynamic_cast<ToP*>(f);  // just to trigger compile-time check
    assert(dynamic_cast<ToP*>(f) != nullptr && "down_cast failed dynamic_cast check");
  }
#endif
#endif

  return static_cast<To>(f);
}

// Reference version: e.g. down_cast<Derived&>(base_ref)
template <typename To, typename From>
inline To down_cast(From& f) {
  static_assert(std::is_lvalue_reference<To>::value, "To must be an lvalue reference");
  using ToR = typename std::remove_reference<To>::type;
  using FromT = typename std::remove_reference<From>::type;

  static_assert(std::is_base_of<FromT, ToR>::value || std::is_base_of<ToR, FromT>::value,
                "down_cast requires related types");

#if !defined(__GNUC__) || defined(__GXX_RTTI)
#ifndef NDEBUG
  (void)dynamic_cast<ToR*>(&f);  // compile-time check
  assert(dynamic_cast<ToR*>(&f) != nullptr && "down_cast failed dynamic_cast check");
#endif
#endif

  return static_cast<To>(f);
}

#endif  // TENSORFLOW_CORE_PLATFORM_CASTS_STUB_H_
