// EigenCoreStub.h (or at the very top of your main Eigen stub), before any specializations
#ifndef EIGEN_CORE_NUMTRAITS_STUB_H_
#define EIGEN_CORE_NUMTRAITS_STUB_H_

#include <type_traits>

namespace Eigen {

// GenericNumTraits primary template (very small subset)
template <typename T>
struct GenericNumTraits {
  using Real       = T;
  using NonInteger = T;
  using Literal    = T;
  using Nested     = T;

  enum {
    IsComplex             = 0,
    IsInteger             = std::is_integral<T>::value ? 1 : 0,
    IsSigned              = std::is_signed<T>::value ? 1 : 0,
    RequireInitialization = 1,
    ReadCost              = 1,
    AddCost               = 1,
    MulCost               = 1
  };

  static inline int digits10() { return 0; }
};

// NumTraits primary template defaults to GenericNumTraits
template <typename T>
struct NumTraits : GenericNumTraits<T> {};

}  // namespace Eigen

#endif  // EIGEN_CORE_NUMTRAITS_STUB_H_
