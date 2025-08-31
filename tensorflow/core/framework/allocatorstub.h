#ifndef TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_H_
#define TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_H_

#include <cstddef>   // for size_t
#include <cstdint>   // for int64_t
#include <string>
#include <optional> 
#define EIGEN_MAX_ALIGN_BYTES 64 // for std::optional

namespace tensorflow {

// Minimal quantized wrapper: distinct type with the same size/alignment
template <typename T>
struct QuantizedInteger {
  using underlying_type = T;

  T value{};

  // trivial, constexpr-friendly ctors
  constexpr QuantizedInteger() = default;
  constexpr QuantizedInteger(T v) : value(v) {}

  // implicit conversion to/from underlying (keep simple for compile-time)
  constexpr operator T() const { return value; }
};

// Aliases expected by TensorFlow (distinct from builtins)
using qint8  = QuantizedInteger<int8_t>;
using quint8 = QuantizedInteger<uint8_t>;
using qint16 = QuantizedInteger<int16_t>;
using quint16 = QuantizedInteger<uint16_t>;
using qint32 = QuantizedInteger<int32_t>;

/* // ---- NEW: complex aliases expected by tensor.h ----
using complex64  = std::complex<float>;
using complex128 = std::complex<double>; */


// ---- Stub AllocatorMemoryType enum ----
enum class AllocatorMemoryType {
  kUnknown = 0,
  kDevice = 1,
  kHostPageable = 2,
  kHostPinned = 3,
};

// ---- Forward declaration for AllocatorStats (optional in methods) ----
struct AllocatorStats {};

// Provide TF-style uint64 alias used by AllocationAttributes
using uint64 = uint64_t;

// ------------------------------------------------------------------
// AllocationAttributes (matches TensorFlow shape, copy/assign deleted)
// ------------------------------------------------------------------
struct AllocationAttributes {
  AllocationAttributes() = default;

  /* AllocationAttributes(bool retry_on_failure, bool allocation_will_be_logged,
                       std::function<uint64()>* freed_by_func)
      : retry_on_failure(retry_on_failure),
        allocation_will_be_logged(allocation_will_be_logged),
        freed_by_func(freed_by_func) {}
 */
  bool retry_on_failure = true;
  bool allocation_will_be_logged = false;
  // Not owned.
  //std::function<uint64()>* freed_by_func = nullptr;

  AllocationAttributes(const AllocationAttributes&) = delete;
  void operator=(const AllocationAttributes&) = delete;
};


// ---- Stub Allocator interface ----
class Allocator {
 public:
  static constexpr size_t kAllocatorAlignment = 64;
  virtual ~Allocator() {}

  // Minimal pure-virtual interface
  virtual std::string Name() { return "StubAllocator"; }

  virtual void* AllocateRaw(size_t alignment, size_t num_bytes) {
    return ::operator new(num_bytes, std::align_val_t(alignment));
  } 

  virtual void DeallocateRaw(void* ptr) { ::operator delete(ptr); }

  // Overload with extra args (stubbed)
  virtual void* AllocateRaw(size_t alignment, size_t num_bytes,
                            const void* /*allocation_attr*/) {
    return AllocateRaw(alignment, num_bytes);
  }
  virtual void DeallocateRaw(void* ptr, size_t, size_t) {
    DeallocateRaw(ptr);
  }

  virtual bool TracksAllocationSizes() const { return false; }
  virtual bool AllocatesOpaqueHandle() const { return false; }

  virtual size_t RequestedSize(const void* /*ptr*/) const { return 0; }
  virtual size_t AllocatedSize(const void* /*ptr*/) const { return 0; }
  virtual int64_t AllocationId(const void* /*ptr*/) const { return 0; }
  virtual size_t AllocatedSizeSlow(const void* /*ptr*/) const { return 0; }

  /* virtual std::optional<AllocatorStats> GetStats() { return std::nullopt; } */
  virtual bool ClearStats() { return false; }

  virtual void SetSafeFrontier(uint64_t) {}
  virtual void SetStreamAndPreallocateMemory(void* /*stream*/) {}

  virtual AllocatorMemoryType GetMemoryType() const {
    return AllocatorMemoryType::kUnknown;
  }
};

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_H_
