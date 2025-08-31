#ifndef TENSORFLOW_CORE_LIB_CORE_REFCOUNT_H_
#define TENSORFLOW_CORE_LIB_CORE_REFCOUNT_H_

#include <atomic>
#include <cstddef>

namespace tensorflow {
namespace core {

// Minimal refcounted base with thread-safe ref/unref and virtual dtor.
class RefCounted {
 public:
  RefCounted() : ref_count_(1) {}
  virtual ~RefCounted() = default;

  // Increase reference count.
  inline void Ref() const {
    ref_count_.fetch_add(1, std::memory_order_relaxed);
  }

  // Decrease reference count and delete this when it hits zero.
  // Returns true if the object was deleted by this call.
  inline bool Unref() const {
    // Use acq_rel so prior writes become visible before potential delete.
    if (ref_count_.fetch_sub(1, std::memory_order_acq_rel) == 1) {
      delete this;
      return true;
    }
    return false;
  }

  // Non-owning read of current count (best-effort).
  inline int RefCount() const {
    return static_cast<int>(ref_count_.load(std::memory_order_relaxed));
  }

 private:
  // Mutable so Ref/Unref can be const (matches TF ABI: _ZNK...RefEv).
  mutable std::atomic<size_t> ref_count_;
};

}  // namespace core
}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_LIB_CORE_REFCOUNT_H_
