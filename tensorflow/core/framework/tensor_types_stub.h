#ifndef TENSORFLOW_CORE_FRAMEWORK_TENSOR_TYPES_STUB_H_
#define TENSORFLOW_CORE_FRAMEWORK_TENSOR_TYPES_STUB_H_

#include <cstddef>
#include <cstdint>
#include <type_traits>
#include <utility>

//
// Minimal Eigen placeholders so we don't pull real Eigen.
//
namespace Eigen {
using DenseIndex = long long;
}  // namespace Eigen

namespace tensorflow {
namespace ttypes_stub_detail {

// A do-nothing “map” type used to satisfy return types & inlines.
// It happily accepts any constructor args used by tensor.h inlines.
template <typename T, int NDIMS, typename IndexType>
struct DummyMap {
  using value_type = T;
  static constexpr int kRank = NDIMS;
  using index_type = IndexType;

  DummyMap() = default;

  template <typename... Args>
  explicit DummyMap(Args&&...) {
    // Intentionally empty: compile-time placeholder.
  }
};

}  // namespace ttypes_stub_detail

// ---------------------------------------------------------------------------
// TTypes stub
//
// Real TF defines:
//   template <typename T, int NDIMS = 1, typename IndexType = Eigen::DenseIndex>
//   struct TTypes { using Tensor = Eigen::TensorMap<...> ... }
//
// We provide the same template & nested names, but back them with DummyMap.
// This is sufficient for compilation of tensor.h inline helpers (vec(), matrix(), tensor()).
// ---------------------------------------------------------------------------
template <typename T, int NDIMS = 1, typename IndexType = Eigen::DenseIndex>
struct TTypes {
  using Tensor              = ttypes_stub_detail::DummyMap<T, NDIMS, IndexType>;
  using ConstTensor         = ttypes_stub_detail::DummyMap<const T, NDIMS, IndexType>;
  using UnalignedTensor     = ttypes_stub_detail::DummyMap<T, NDIMS, IndexType>;
  using UnalignedConstTensor= ttypes_stub_detail::DummyMap<const T, NDIMS, IndexType>;

  // 32-bit index variant
  using Tensor32Bit         = ttypes_stub_detail::DummyMap<T, NDIMS, int>;

  // Rank-0 (scalar)
  using Scalar              = ttypes_stub_detail::DummyMap<T, 0, IndexType>;
  using ConstScalar         = ttypes_stub_detail::DummyMap<const T, 0, IndexType>;
  using UnalignedScalar     = ttypes_stub_detail::DummyMap<T, 0, IndexType>;
  using UnalignedConstScalar= ttypes_stub_detail::DummyMap<const T, 0, IndexType>;

  // Rank-1 (vector)
  using Flat                = ttypes_stub_detail::DummyMap<T, 1, IndexType>;
  using ConstFlat           = ttypes_stub_detail::DummyMap<const T, 1, IndexType>;
  using Vec                 = ttypes_stub_detail::DummyMap<T, 1, IndexType>;
  using ConstVec            = ttypes_stub_detail::DummyMap<const T, 1, IndexType>;
  using UnalignedFlat       = ttypes_stub_detail::DummyMap<T, 1, IndexType>;
  using UnalignedConstFlat  = ttypes_stub_detail::DummyMap<const T, 1, IndexType>;
  using UnalignedVec        = ttypes_stub_detail::DummyMap<T, 1, IndexType>;
  using UnalignedConstVec   = ttypes_stub_detail::DummyMap<const T, 1, IndexType>;

  // Rank-2 (matrix)
  using Matrix              = ttypes_stub_detail::DummyMap<T, 2, IndexType>;
  using ConstMatrix         = ttypes_stub_detail::DummyMap<const T, 2, IndexType>;
  using UnalignedMatrix     = ttypes_stub_detail::DummyMap<T, 2, IndexType>;
  using UnalignedConstMatrix= ttypes_stub_detail::DummyMap<const T, 2, IndexType>;
};

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_FRAMEWORK_TENSOR_TYPES_STUB_H_
