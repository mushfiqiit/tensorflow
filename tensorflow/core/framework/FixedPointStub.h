// Minimal stub of Eigen's FixedPointTypes.h sufficient for TensorFlow's
// numeric_types.h typedefs and basic usage.
// Place at: third_party/eigen3/unsupported/Eigen/CXX11/FixedPointTypes.h

#ifndef CXX11_SRC_FIXEDPOINT_FIXEDPOINTTYPES_H_
#define CXX11_SRC_FIXEDPOINT_FIXEDPOINTTYPES_H_

#include <cstdint>
#include <cmath>
#include <ostream>

#ifndef EIGEN_STRONG_INLINE
#define EIGEN_STRONG_INLINE inline
#endif

namespace Eigen {

// ------------------------------------------------------------------
// Minimal NumTraits/GenericNumTraits stubs (only what we need here).
// If other Eigen headers are present, these definitions will usually
// be replaced by the real ones; in this isolated build they’re enough.
// ------------------------------------------------------------------
/* template <typename T>
struct GenericNumTraits {}; */

/* template <typename T>
struct NumTraits : GenericNumTraits<T> {}; */

// Forward decl for internal traits namespace used below.
namespace internal {
template <typename A, typename B>
struct scalar_product_traits;
}  // namespace internal

// ------------------------------------------------------------------
// Fixed-point wrapper types
// ------------------------------------------------------------------
struct QInt32;

struct QInt8 {
  QInt8() : value(0) {}
  explicit QInt8(int8_t v) : value(v) {}
  explicit QInt8(QInt32 v);  // defined after QInt32
  operator int() const { return static_cast<int>(value); }
  int8_t value;
};

struct QUInt8 {
  QUInt8() : value(0) {}
  explicit QUInt8(uint8_t v) : value(v) {}
  explicit QUInt8(QInt32 v);  // defined after QInt32
  operator int() const { return static_cast<int>(value); }
  uint8_t value;
};

struct QInt16 {
  QInt16() : value(0) {}
  explicit QInt16(int16_t v) : value(v) {}
  explicit QInt16(QInt32 v);  // defined after QInt32
  operator int() const { return static_cast<int>(value); }
  int16_t value;
};

struct QUInt16 {
  QUInt16() : value(0) {}
  explicit QUInt16(uint16_t v) : value(v) {}
  explicit QUInt16(QInt32 v);  // defined after QInt32
  operator int() const { return static_cast<int>(value); }
  uint16_t value;
};

struct QInt32 {
  QInt32() : value(0) {}
  explicit QInt32(int8_t v) : value(v) {}
  explicit QInt32(int32_t v) : value(v) {}
  explicit QInt32(uint32_t v) : value(static_cast<int32_t>(v)) {}
  explicit QInt32(QInt8 v) : value(v.value) {}
  explicit QInt32(float v)
      : value(static_cast<int32_t>(std::lround(static_cast<double>(v)))) {}
  operator float() const { return static_cast<float>(value); }
  int32_t value;
};

// Clamp helpers for narrowing constructors
EIGEN_STRONG_INLINE QInt8::QInt8(QInt32 v) {
  int32_t x = v.value;
  if (x > 127) x = 127;
  else if (x < -128) x = -128;
  value = static_cast<int8_t>(x);
}

EIGEN_STRONG_INLINE QUInt8::QUInt8(QInt32 v) {
  int32_t x = v.value;
  if (x > 255) x = 255;
  else if (x < 0) x = 0;
  value = static_cast<uint8_t>(x);
}

EIGEN_STRONG_INLINE QInt16::QInt16(QInt32 v) {
  int32_t x = v.value;
  if (x > 32767) x = 32767;
  else if (x < -32768) x = -32768;
  value = static_cast<int16_t>(x);
}

EIGEN_STRONG_INLINE QUInt16::QUInt16(QInt32 v) {
  int32_t x = v.value;
  if (x > 65535) x = 65535;
  else if (x < 0) x = 0;
  value = static_cast<uint16_t>(x);
}

// ------------------------------------------------------------------
// Basic widening ops and mixed ops mirroring Eigen's minimal behavior
// ------------------------------------------------------------------

// 8-bit widening
EIGEN_STRONG_INLINE QInt32 operator*(QInt8 a, QInt8 b) {
  return QInt32(static_cast<int32_t>(a.value) * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt8 a, QUInt8 b) {
  return QInt32(static_cast<int32_t>(a.value) * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QInt8 a, QInt8 b) {
  return QInt32(static_cast<int32_t>(a.value) + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt8 a, QInt8 b) {
  return QInt32(static_cast<int32_t>(a.value) - static_cast<int32_t>(b.value));
}

// 16-bit widening
EIGEN_STRONG_INLINE QInt32 operator*(QInt16 a, QInt16 b) {
  return QInt32(static_cast<int32_t>(a.value) * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt16 a, QUInt16 b) {
  return QInt32(static_cast<int32_t>(a.value) * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QInt16 a, QInt16 b) {
  return QInt32(static_cast<int32_t>(a.value) + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt16 a, QInt16 b) {
  return QInt32(static_cast<int32_t>(a.value) - static_cast<int32_t>(b.value));
}

// Mixed QInt32 with QInt8
EIGEN_STRONG_INLINE QInt32 operator+(QInt32 a, QInt8 b) {
  return QInt32(a.value + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) + b.value);
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a, QInt8 b) {
  return QInt32(a.value - static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) - b.value);
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, QInt8 b) {
  return QInt32(a.value * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) * b.value);
}

// Mixed QInt32 with QInt16
EIGEN_STRONG_INLINE QInt32 operator+(QInt32 a, QInt16 b) {
  return QInt32(a.value + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) + b.value);
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a, QInt16 b) {
  return QInt32(a.value - static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) - b.value);
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, QInt16 b) {
  return QInt32(a.value * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) * b.value);
}

// Mixed QInt32 with QUInt8
EIGEN_STRONG_INLINE QInt32 operator+(QInt32 a, QUInt8 b) {
  return QInt32(a.value + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QUInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) + b.value);
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a, QUInt8 b) {
  return QInt32(a.value - static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QUInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) - b.value);
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, QUInt8 b) {
  return QInt32(a.value * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QUInt8 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) * b.value);
}

// Mixed QInt32 with QUInt16
EIGEN_STRONG_INLINE QInt32 operator+(QInt32 a, QUInt16 b) {
  return QInt32(a.value + static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator+(QUInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) + b.value);
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a, QUInt16 b) {
  return QInt32(a.value - static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator-(QUInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) - b.value);
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, QUInt16 b) {
  return QInt32(a.value * static_cast<int32_t>(b.value));
}
EIGEN_STRONG_INLINE QInt32 operator*(QUInt16 a, QInt32 b) {
  return QInt32(static_cast<int32_t>(a.value) * b.value);
}

// QInt32 arithmetic behaving like int32_t
EIGEN_STRONG_INLINE QInt32 operator+(QInt32 a, QInt32 b) {
  return QInt32(a.value + b.value);
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a, QInt32 b) {
  return QInt32(a.value - b.value);
}
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, QInt32 b) {
  return QInt32(a.value * b.value);
}
EIGEN_STRONG_INLINE QInt32 operator/(QInt32 a, QInt32 b) {
  return QInt32(a.value / b.value);
}
EIGEN_STRONG_INLINE QInt32& operator+=(QInt32& a, QInt32 b) {
  a.value += b.value; return a;
}
EIGEN_STRONG_INLINE QInt32& operator-=(QInt32& a, QInt32 b) {
  a.value -= b.value; return a;
}
EIGEN_STRONG_INLINE QInt32& operator*=(QInt32& a, QInt32 b) {
  a.value *= b.value; return a;
}
EIGEN_STRONG_INLINE QInt32& operator/=(QInt32& a, QInt32 b) {
  a.value /= b.value; return a;
}
EIGEN_STRONG_INLINE QInt32 operator-(QInt32 a) { return QInt32(-a.value); }

// Scaling by double
EIGEN_STRONG_INLINE QInt32 operator*(QInt32 a, double b) {
  return QInt32(static_cast<int32_t>(std::lround(static_cast<double>(a.value) * b)));
}
EIGEN_STRONG_INLINE QInt32 operator*(double a, QInt32 b) {
  return QInt32(static_cast<int32_t>(std::lround(a * static_cast<double>(b.value))));
}
EIGEN_STRONG_INLINE QInt32& operator*=(QInt32& a, double b) {
  a.value = static_cast<int32_t>(std::lround(static_cast<double>(a.value) * b));
  return a;
}

// Comparisons
EIGEN_STRONG_INLINE bool operator==(QInt8 a, QInt8 b)   { return a.value == b.value; }
EIGEN_STRONG_INLINE bool operator==(QUInt8 a, QUInt8 b) { return a.value == b.value; }
EIGEN_STRONG_INLINE bool operator==(QInt16 a, QInt16 b) { return a.value == b.value; }
EIGEN_STRONG_INLINE bool operator==(QUInt16 a, QUInt16 b) { return a.value == b.value; }
EIGEN_STRONG_INLINE bool operator==(QInt32 a, QInt32 b) { return a.value == b.value; }

EIGEN_STRONG_INLINE bool operator<(QInt8 a, QInt8 b)     { return a.value < b.value; }
EIGEN_STRONG_INLINE bool operator<(QUInt8 a, QUInt8 b)   { return a.value < b.value; }
EIGEN_STRONG_INLINE bool operator<(QInt16 a, QInt16 b)   { return a.value < b.value; }
EIGEN_STRONG_INLINE bool operator<(QUInt16 a, QUInt16 b) { return a.value < b.value; }
EIGEN_STRONG_INLINE bool operator<(QInt32 a, QInt32 b)   { return a.value < b.value; }

EIGEN_STRONG_INLINE bool operator>(QInt8 a, QInt8 b)     { return a.value > b.value; }
EIGEN_STRONG_INLINE bool operator>(QUInt8 a, QUInt8 b)   { return a.value > b.value; }
EIGEN_STRONG_INLINE bool operator>(QInt16 a, QInt16 b)   { return a.value > b.value; }
EIGEN_STRONG_INLINE bool operator>(QUInt16 a, QUInt16 b) { return a.value > b.value; }
EIGEN_STRONG_INLINE bool operator>(QInt32 a, QInt32 b)   { return a.value > b.value; }

// Streams
EIGEN_STRONG_INLINE std::ostream& operator<<(std::ostream& os, QInt8 a)   { return os << static_cast<int>(a.value); }
EIGEN_STRONG_INLINE std::ostream& operator<<(std::ostream& os, QUInt8 a)  { return os << static_cast<int>(a.value); }
EIGEN_STRONG_INLINE std::ostream& operator<<(std::ostream& os, QInt16 a)  { return os << static_cast<int>(a.value); }
EIGEN_STRONG_INLINE std::ostream& operator<<(std::ostream& os, QUInt16 a) { return os << static_cast<int>(a.value); }
EIGEN_STRONG_INLINE std::ostream& operator<<(std::ostream& os, QInt32 a)  { return os << a.value; }

/* // NumTraits specializations (lightweight)
template <> struct NumTraits<QInt8>   : GenericNumTraits<int8_t>  {};
template <> struct NumTraits<QUInt8>  : GenericNumTraits<uint8_t> {};
template <> struct NumTraits<QInt16>  : GenericNumTraits<int16_t> {};
template <> struct NumTraits<QUInt16> : GenericNumTraits<uint16_t>{};
template <> struct NumTraits<QInt32>  : GenericNumTraits<int32_t> {}; */

// Internal scalar_product_traits stub used by some Eigen algos
namespace internal {
template <>
struct scalar_product_traits<QInt32, double> {
  enum { Defined = 1 };
  using ReturnType = QInt32;
};
}  // namespace internal

}  // namespace Eigen

#endif  // CXX11_SRC_FIXEDPOINT_FIXEDPOINTTYPES_H_
