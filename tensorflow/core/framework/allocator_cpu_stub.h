// tensorflow/core/framework/allocator_cpu_stub.h
#ifndef TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_CPU_STUB_H_
#define TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_CPU_STUB_H_

#include <string>
#include "allocatorstub.h"  // your stub Allocator

namespace tensorflow {

// Simple concrete allocator based on your stubbed Allocator interface.
// If your Allocator in allocatorstub.h is already concrete, you can
// even skip this subclass and return a new Allocator() directly.
class StubCPUAllocator : public Allocator {
 public:
  ~StubCPUAllocator() override = default;
  std::string Name() override { return "StubCPUAllocator"; }
  // AllocateRaw/DeallocateRaw and others are inherited from your stub.
};

// Return a process-wide singleton CPU allocator.
inline Allocator* cpu_allocator() {
  static StubCPUAllocator* inst = new StubCPUAllocator();
  return inst;
}

// NUMA-aware overload ignored in the stub; returns same singleton.
inline Allocator* cpu_allocator(int /*numa_node*/) {
  return cpu_allocator();
}

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_FRAMEWORK_ALLOCATOR_CPU_STUB_H_
