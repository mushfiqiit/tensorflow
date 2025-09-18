#ifndef EIGEN_CXX11_HALF_STUB_H_
#define EIGEN_CXX11_HALF_STUB_H_

#include <cstdint>
#include <type_traits>
#include <complex>
#include "EigenCoreStub.h"

#ifndef EIGEN_DEVICE_FUNC
#define EIGEN_DEVICE_FUNC
#endif
#ifndef EIGEN_CONSTEXPR
#define EIGEN_CONSTEXPR constexpr
#endif
#ifndef EIGEN_STRONG_INLINE
#define EIGEN_STRONG_INLINE inline
#endif

namespace Eigen {
namespace half_impl {

// Raw 16-bit storage used by Eigen’s half implementation.
struct __half_raw {
  uint16_t x;
};

// Base that stores the raw bits. Real Eigen has a richer base; we keep it minimal.
struct half_base {
  uint16_t x;
  EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR half_base() : x(0) {}
  EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR explicit half_base(const __half_raw& r) : x(r.x) {}
};

// Convert a raw 16-bit pattern to __half_raw.
EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR inline __half_raw raw_uint16_to_half(uint16_t bits) {
  return __half_raw{bits};
}

// Bit-cast helpers
EIGEN_DEVICE_FUNC inline uint32_t f32_to_u32(float f) {
  static_assert(sizeof(float) == sizeof(uint32_t), "float/u32 size mismatch");
  uint32_t u;
  std::memcpy(&u, &f, sizeof(u));
  return u;
}
EIGEN_DEVICE_FUNC inline float u32_to_f32(uint32_t u) {
  float f;
  std::memcpy(&f, &u, sizeof(f));
  return f;
}

// IEEE-754 half <-> float conversions (round-to-nearest-even).
// Reference-style implementation; compact and dependency-free.
EIGEN_DEVICE_FUNC inline __half_raw float_to_half_rtne(float f) {
  uint32_t x = f32_to_u32(f);
  uint32_t sign = (x >> 31) & 0x1u;
  uint32_t exp  = (x >> 23) & 0xffu;
  uint32_t mant =  x        & 0x7fffffu;

  uint16_t h;
  if (exp == 0xffu) {
    // Inf/NaN
    uint16_t h_exp = 0x1fu;
    uint16_t h_m   = (mant ? 0x200u : 0u); // quiet NaN minimal
    h = static_cast<uint16_t>((sign << 15) | (h_exp << 10) | h_m);
  } else if (exp == 0) {
    // Subnormal/zero in float -> may become zero in half
    if (mant == 0) {
      h = static_cast<uint16_t>(sign << 15);
    } else {
      // Normalize the subnormal float
      int shift = __builtin_clz(mant) - 8; // clz(23-bit mant) adjust
      mant <<= (shift + 1);
      exp = 1 - shift;
      // Now treat as normalized and fall through (we’ll handle small exponent below)
      goto normalized;
    }
  } else {
  normalized:
    int32_t new_exp = static_cast<int32_t>(exp) - 127 + 15;
    if (new_exp >= 0x1f) {
      // Overflow -> Inf
      h = static_cast<uint16_t>((sign << 15) | (0x1fu << 10));
    } else if (new_exp <= 0) {
      // Subnormal in half
      if (new_exp < -10) {
        // Too small -> signed zero
        h = static_cast<uint16_t>(sign << 15);
      } else {
        mant = (mant | 0x800000u);               // add implicit 1
        uint32_t rshift = 14 - static_cast<uint32_t>(new_exp);
        uint32_t half_m = mant >> rshift;
        // Round-to-nearest-even: check remainder
        uint32_t rem = mant & ((1u << rshift) - 1u);
        uint32_t halfway = 1u << (rshift - 1u);
        if (rem > halfway || (rem == halfway && (half_m & 1u))) {
          half_m++;
        }
        h = static_cast<uint16_t>((sign << 15) | static_cast<uint16_t>(half_m));
      }
    } else {
      // Normal in half
      uint32_t half_exp = static_cast<uint32_t>(new_exp);
      uint32_t half_m   = mant >> 13;           // keep 10 bits
      uint32_t rem      = mant & 0x1fffu;       // remainder for rounding
      if (rem > 0x1000u || (rem == 0x1000u && (half_m & 1u))) {
        // Round-to-nearest-even
        half_m++;
        if (half_m == 0x400u) {                 // mant overflow -> bump exponent
          half_m = 0;
          half_exp++;
          if (half_exp >= 0x1fu) {              // overflow to inf
            half_exp = 0x1fu;
            half_m = 0;
          }
        }
      }
      h = static_cast<uint16_t>((sign << 15) | (static_cast<uint16_t>(half_exp) << 10) |
                                static_cast<uint16_t>(half_m));
    }
  }
  return __half_raw{h};
}

struct half; // fwd

EIGEN_DEVICE_FUNC inline float half_to_float_bits(uint16_t h) {
  uint32_t sign = (h >> 15) & 0x1u;
  uint32_t exp  = (h >> 10) & 0x1fu;
  uint32_t mant =  h        & 0x3ffu;

  uint32_t f;
  if (exp == 0x1fu) {
    // Inf/NaN
    uint32_t f_exp = 0xffu;
    uint32_t f_m   = (mant ? (mant << 13) | 0x400000u : 0u); // quiet NaN
    f = (sign << 31) | (f_exp << 23) | f_m;
  } else if (exp == 0) {
    if (mant == 0) {
      // Signed zero
      f = (sign << 31);
    } else {
      // Subnormal -> normalize
      int e = -1;
      uint32_t m = mant;
      while ((m & 0x400u) == 0) { m <<= 1; --e; }
      m &= 0x3ffu;
      uint32_t f_exp = 127 - 15 + 1 + e;
      uint32_t f_m   = m << 13;
      f = (sign << 31) | (f_exp << 23) | f_m;
    }
  } else {
    // Normal
    uint32_t f_exp = exp - 15 + 127;
    uint32_t f_m   = mant << 13;
    f = (sign << 31) | (f_exp << 23) | f_m;
  }
  return u32_to_f32(f);
}

} // namespace half_impl

struct half : public half_impl::half_base {
  using half_impl::half_base::half_base;

  EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR half() : half_base() {}

  // Construct from raw storage token
  EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR half(const half_impl::__half_raw& h)
      : half_base(h) {}

  // bool -> 0x3c00 (1.0) or 0
  explicit EIGEN_DEVICE_FUNC EIGEN_CONSTEXPR half(bool b)
      : half_base(half_impl::raw_uint16_to_half(b ? 0x3c00u : 0u)) {}

  // generic arithmetic types -> via float (RTNE)
  template <class T>
  explicit EIGEN_DEVICE_FUNC half(T v)
      : half_base(half_impl::float_to_half_rtne(static_cast<float>(v))) {}

  explicit EIGEN_DEVICE_FUNC half(float f)
      : half_base(half_impl::float_to_half_rtne(f)) {}

  // complex -> drop imag, follow numpy/Eigen convention
  template <typename RealScalar>
  explicit EIGEN_DEVICE_FUNC half(std::complex<RealScalar> c)
      : half_base(half_impl::float_to_half_rtne(static_cast<float>(c.real()))) {}

  // Lossless promotion back to float
  EIGEN_DEVICE_FUNC operator float() const {
    return half_impl::half_to_float_bits(this->x);
  }
};

// Minimal NumTraits for Eigen::half (TF queries this in a few places)
template <> struct NumTraits<half> {
  using Real        = half;
  using NonInteger  = half;
  using Literal     = half;
  using Nested      = half;
  enum {
    IsComplex             = 0,
    IsInteger             = 0,
    IsSigned              = 1,
    RequireInitialization = 1,
    ReadCost              = 1,
    AddCost               = 1,
    MulCost               = 1
  };
  static inline int digits10() { return 3; }
};

} // namespace Eigen

#endif // EIGEN_CXX11_HALF_STUB_H_
