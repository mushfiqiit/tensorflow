// third_party_stubs/tf_error_codes_stub.h
#pragma once
#include <cstdint>
#include <limits>

namespace tensorflow {
namespace error {

// Use a *scoped* enum so sites like ::tensorflow::error::Code::INVALID_ARGUMENT compile.
enum class Code : int32_t {
  OK = 0,
  CANCELLED = 1,
  UNKNOWN = 2,
  INVALID_ARGUMENT = 3,
  DEADLINE_EXCEEDED = 4,
  NOT_FOUND = 5,
  ALREADY_EXISTS = 6,
  PERMISSION_DENIED = 7,
  RESOURCE_EXHAUSTED = 8,
  FAILED_PRECONDITION = 9,
  ABORTED = 10,
  OUT_OF_RANGE = 11,
  UNIMPLEMENTED = 12,
  INTERNAL = 13,
  UNAVAILABLE = 14,
  DATA_LOSS = 15,
  UNAUTHENTICATED = 16,
  DO_NOT_USE_RESERVED_FOR_FUTURE_EXPANSION_USE_DEFAULT_IN_SWITCH_INSTEAD_ = 20,
  Code_INT_MIN_SENTINEL_DO_NOT_USE_ = std::numeric_limits<int32_t>::min(),
  Code_INT_MAX_SENTINEL_DO_NOT_USE_ = std::numeric_limits<int32_t>::max(),
};

// Provide unscoped aliases so sites like ::tensorflow::error::CANCELLED compile too.
inline constexpr Code OK = Code::OK;
inline constexpr Code CANCELLED = Code::CANCELLED;
inline constexpr Code UNKNOWN = Code::UNKNOWN;
inline constexpr Code INVALID_ARGUMENT = Code::INVALID_ARGUMENT;
inline constexpr Code DEADLINE_EXCEEDED = Code::DEADLINE_EXCEEDED;
inline constexpr Code NOT_FOUND = Code::NOT_FOUND;
inline constexpr Code ALREADY_EXISTS = Code::ALREADY_EXISTS;
inline constexpr Code PERMISSION_DENIED = Code::PERMISSION_DENIED;
inline constexpr Code RESOURCE_EXHAUSTED = Code::RESOURCE_EXHAUSTED;
inline constexpr Code FAILED_PRECONDITION = Code::FAILED_PRECONDITION;
inline constexpr Code ABORTED = Code::ABORTED;
inline constexpr Code OUT_OF_RANGE = Code::OUT_OF_RANGE;
inline constexpr Code UNIMPLEMENTED = Code::UNIMPLEMENTED;
inline constexpr Code INTERNAL = Code::INTERNAL;
inline constexpr Code UNAVAILABLE = Code::UNAVAILABLE;
inline constexpr Code DATA_LOSS = Code::DATA_LOSS;
inline constexpr Code UNAUTHENTICATED = Code::UNAUTHENTICATED;

} // namespace error

// Some TF code refers to tensorflow::errors::Code. Provide that alias.
namespace errors {
using Code = ::tensorflow::error::Code;
} // namespace errors

} // namespace tensorflow
