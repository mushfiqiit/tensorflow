#pragma once
#include <cstdint>

namespace tensorflow {

// Minimal stand-in for TensorFlow's bfloat16.
// - Keeps a 16-bit payload.
// - Can be constructed from float (naively truncates).
// - Implicitly converts back to float (reconstructs high 16 bits).
// This is ONLY to satisfy compilation; it is not numerically exact.

struct bfloat16 {
  uint16_t value;

  // Default: 0
  constexpr bfloat16() : value(0) {}

  // From bool
  explicit constexpr bfloat16(bool b) : value(b ? 0x3F80u /*1.0f*/ : 0u) {}

  // From generic arithmetic types -> route through float
  template <typename T>
  explicit bfloat16(T v) : bfloat16(static_cast<float>(v)) {}

  // From float: take top 16 bits (very naive round/truncate)
  explicit bfloat16(float f) {
    union { float f; uint32_t u; } u = { f };
    value = static_cast<uint16_t>(u.u >> 16);
  }

  // To float: place the 16-bit payload in the high word
  operator float() const {
    union { uint32_t u; float f; } u = { static_cast<uint32_t>(value) << 16 };
    return u.f;
  }
};

}  // namespace tensorflow
