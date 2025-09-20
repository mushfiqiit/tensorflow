// tensor_buffer_stub.h
#ifndef TENSOR_BUFFER_STUB_H_
#define TENSOR_BUFFER_STUB_H_

#include <cstddef>  // size_t
#include <atomic>

namespace tensorflow {
namespace core {

// Minimal intrusive refcount base to satisfy inheritance.
// Matches the common TF pattern: Ref(), Unref(), virtual dtor.
class RefCounted {
 public:
  RefCounted() : ref_(1) {}
  virtual ~RefCounted() {}

  void Ref() const { ref_.fetch_add(1, std::memory_order_relaxed); }
  // Returns true if this call deleted the object.
  bool Unref() const {
    if (ref_.fetch_sub(1, std::memory_order_acq_rel) == 1) {
      delete this;
      return true;
    }
    return false;
  }
  int RefCount() const { return ref_.load(std::memory_order_relaxed); }

 private:
  mutable std::atomic<int> ref_;
  RefCounted(const RefCounted&) = delete;
  RefCounted& operator=(const RefCounted&) = delete;
};

// Memory type enum roughly mirroring TF (only kUnknown needed here).
enum class AllocatorMemoryType {
  kUnknown = 0,
  kCPU     = 1,
  kGPU     = 2,
  kHostPinned = 3
};

// Ultra-minimal stand-in for the protobuf message.
// Add fields you care about; callers can ignore if unused.
struct AllocationDescription {
  // Commonly tracked info in TF; optional in this stub.
  size_t requested_bytes = 0;
  size_t allocated_bytes = 0;
  const char* allocator_name = nullptr;
};

}  // namespace core

// Public aliases like in TF so the unqualified names resolve.
using AllocatorMemoryType = core::AllocatorMemoryType;
using AllocationDescription = core::AllocationDescription;

// ----- TensorBuffer stub -----
class TensorBuffer : public core::RefCounted {
 public:
  explicit TensorBuffer(void* data_ptr) : data_(data_ptr) {}
  ~TensorBuffer() override {}

  // Points to a memory region of size() bytes.
  // Non-virtual for performance/inlining, as in TF.
  void* data() const { return data_; }

  // Size (in bytes) of the buffer.
  virtual size_t size() const = 0;

  // If this is a sub-buffer, return its root; otherwise return this.
  virtual TensorBuffer* root_buffer() = 0;

  // Fill metadata about the allocation.
  virtual void FillAllocationDescription(AllocationDescription* proto) const = 0;

  // Default TF behavior is to return false unless a subclass can report it.
  virtual bool GetAllocatedBytes(size_t* /*out_bytes*/) const { return false; }

  // Helper: reinterpret the buffer as an array of T.
  template <typename T>
  T* base() const {
    return reinterpret_cast<T*>(data());
  }

  // Whether this TensorBuffer owns the underlying memory.
  virtual bool OwnsMemory() const { return true; }

  // Type of the underlying memory.
  virtual AllocatorMemoryType GetMemoryType() const {
    return AllocatorMemoryType::kUnknown;
  }

 private:
  void* const data_;
};

}  // namespace tensorflow

#endif  // TENSOR_BUFFER_STUB_H_
