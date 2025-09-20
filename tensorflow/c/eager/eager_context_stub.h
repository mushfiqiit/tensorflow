#pragma once

// Minimal, dependency-free EagerContext stand-in.
// Provides the constructor & most commonly used toggles/state so callers compile
// and basic behavior works. No TF / Abseil / Eigen includes are required.

#include <cstdint>
#include <atomic>
#include <functional>
#include <memory>
#include <mutex>
#include <random>
#include <string>
#include <thread>
#include <unordered_map>
#include <utility>
#include <vector>
#include "tensorflow/c/eager/c_api_internal.h"

namespace tensorflow {

// ---------- Tiny stubs for types referenced by the real EagerContext ----------

// Placement policy (subset).
enum class ContextDevicePlacementPolicy : int {
  kDisallow = 0,
  kWarn     = 1,
  kSilent   = 2,
  kExplicit = 3
};

// Minimal Device descriptor.
struct DeviceAttributes {
  std::string name;
  std::string device_type;
  std::string physical_device_desc;
};

// Minimal Device.
class Device {
 public:
  explicit Device(std::string name, std::string type = "CPU")
      : name_(std::move(name)), type_(std::move(type)) {}
  const std::string& name() const { return name_; }
  const std::string& type() const { return type_; }
 private:
  std::string name_;
  std::string type_;
};

// Minimal DeviceMgr that owns a vector of Devices.
class DeviceMgr {
 public:
  DeviceMgr() = default;
  explicit DeviceMgr(std::vector<std::unique_ptr<Device>> devs) {
    devices_.reserve(devs.size());
    for (auto& d : devs) devices_.push_back(std::move(d));
  }
  std::vector<Device*> ListDevices() const {
    std::vector<Device*> out;
    out.reserve(devices_.size());
    for (auto const& p : devices_) out.push_back(p.get());
    return out;
  }
 private:
  std::vector<std::unique_ptr<Device>> devices_;
};

class DynamicDeviceMgr : public DeviceMgr {
 public:
  using DeviceMgr::DeviceMgr;
};

// Minimal Rendezvous stub (opaque).
class Rendezvous {
 public:
  virtual ~Rendezvous() = default;
};

// Minimal thread pool name holder (placeholder).
namespace thread {
class ThreadPool {
 public:
  ThreadPool() = default;
  ~ThreadPool() = default;
};
}  // namespace thread

// Minimal distributed manager forward-declared type.
class ImmediateExecutionDistributedManager {};


// ---------- EagerContext stub ----------

class EagerContext {
 public:
  using uint64 = std::uint64_t;
  static constexpr uint64 kInvalidContextId = 0;

  // Generate a non-zero random context id (like the real one).
  static uint64 NewContextId() {
    static thread_local std::mt19937_64 rng{std::random_device{}()};
    uint64 id = 0;
    do { id = rng(); } while (id == kInvalidContextId);
    return id;
  }

  // Constructor signature mirrors the real one, but all pointers are optional
  // and treated as opaque. No ownership is taken unless device_mgr_owned=true.
  EagerContext(const SessionOptions& opts,
               ContextDevicePlacementPolicy default_device_placement_policy,
               bool async,
               DeviceMgr* device_mgr,
               bool device_mgr_owned,
               Rendezvous* rendezvous,
               /* unused plumbing kept for signature compatibility: */
               void* /*cluster_flr*/                 = nullptr,
               void* /*collective_executor_mgr*/     = nullptr,
               bool run_eager_op_as_function         = false,
               bool jit_compile_rewrite              = false)
      : opts_(opts),
        default_policy_(default_device_placement_policy),
        async_(async),
        run_eager_op_as_function_(run_eager_op_as_function),
        jit_compile_rewrite_(jit_compile_rewrite),
        rendezvous_(rendezvous),
        context_id_(NewContextId()),
        log_device_placement_(false),
        allow_soft_placement_(true) {
    if (device_mgr_owned && device_mgr != nullptr) {
      owned_device_mgr_.reset(device_mgr);
      device_mgr_ = owned_device_mgr_.get();
    } else {
      device_mgr_ = device_mgr;  // non-owning
    }
    // Create a trivial host CPU device if none provided.
    if (device_mgr_ == nullptr) {
      std::vector<std::unique_ptr<Device>> devs;
      devs.emplace_back(new Device("/device:CPU:0", "CPU"));
      owned_device_mgr_.reset(new DeviceMgr(std::move(devs)));
      device_mgr_ = owned_device_mgr_.get();
    }
    // Default runner: inline.
    runner_ = [](std::function<void()> fn) { fn(); };
  }

  ~EagerContext() = default;

  // ---------------- Basic toggles / queries ----------------
  bool UsesTFRT() const { return false; }  // This stub never uses TFRT.

  bool RunEagerOpAsFunction() const { return run_eager_op_as_function_; }
  void SetRunEagerOpAsFunction(bool enable) { run_eager_op_as_function_ = enable; }

  bool JitCompileRewrite() const { return jit_compile_rewrite_; }
  void SetJitCompileRewrite(bool enable) { jit_compile_rewrite_ = enable; }

  void SetLogDevicePlacement(bool enable) { log_device_placement_.store(enable); }
  bool LogDevicePlacement() const { return log_device_placement_.load(); }

  void SetAllowSoftPlacement(bool enable) { allow_soft_placement_.store(enable); }
  bool AllowSoftPlacement() const { return allow_soft_placement_.load(); }

  void SetExecutorForThread(void* /*executor*/) {
    // No-op in stub; we don't model per-thread executors.
  }

  // Placement policy per-thread (kept minimal).
  void SetThreadLocalDevicePlacementPolicy(ContextDevicePlacementPolicy p) {
    std::lock_guard<std::mutex> lk(policy_mu_);
    policy_map_[std::this_thread::get_id()] = p;
  }
  ContextDevicePlacementPolicy GetDevicePlacementPolicy() const {
    std::lock_guard<std::mutex> lk(policy_mu_);
    auto it = policy_map_.find(std::this_thread::get_id());
    return (it == policy_map_.end()) ? default_policy_ : it->second;
  }

  // ---------------- Devices / listing ----------------
  void ListDevices(std::vector<DeviceAttributes>* out) const {
    if (!out) return;
    out->clear();
    for (Device* d : device_mgr_->ListDevices()) {
      DeviceAttributes a;
      a.name  = d->name();
      a.device_type = d->type();
      a.physical_device_desc = "";
      out->push_back(std::move(a));
    }
  }

  // AddDevices: adopt and append new devices into our owned device manager.
  // (This is a pragmatic behavior suited for a stub.)
  bool AddDevices(std::vector<std::unique_ptr<Device>> devices) {
    if (!owned_device_mgr_) {
      // If the manager wasn't owned, take ownership now with a copy of existing.
      std::vector<std::unique_ptr<Device>> copy;
      for (Device* d : device_mgr_->ListDevices()) {
        copy.emplace_back(new Device(d->name(), d->type()));
      }
      owned_device_mgr_.reset(new DeviceMgr(std::move(copy)));
      device_mgr_ = owned_device_mgr_.get();
    }
    // Move new devices into our owned manager by re-wrapping them (simple way).
    auto existing = device_mgr_->ListDevices();  // snapshot, not used for storage
    for (auto& p : devices) {
      // Just collecting names/types by constructing a fresh Device object.
      owned_extra_.emplace_back(new Device(p->name(), p->type()));
    }
    return true;
  }

  thread::ThreadPool* GetThreadPool() { return &thread_pool_; }

  // Runner getter/setter (used in some paths to schedule closures).
  std::function<void(std::function<void()>)>* runner() { return &runner_; }

  // Distributed manager hook (no-ops; stored only).
  void SetDistributedManager(
      std::unique_ptr<ImmediateExecutionDistributedManager> mgr) {
    distributed_manager_ = std::move(mgr);
  }
  ImmediateExecutionDistributedManager* GetDistributedManager() {
    return distributed_manager_.get();
  }

  // Rendezvous access (opaque).
  Rendezvous* GetRendezvous() const { return rendezvous_; }

  // Sync/Async helpers (no real async work in this stub).
  bool AsyncWait() { return true; }  // Always “synced”.

  // Context id (handy if something expects it).
  uint64 GetContextId() const { return context_id_; }

  // Session options for anyone who inspects them.
  const SessionOptions& session_options() const { return opts_; }

  // Clear caches/executors (no-ops here).
  void ClearCachesAndThreadExecutors() {}
  void ClearCachesAndDefaultExecutor() {}

 private:
  // Options / toggles
  SessionOptions opts_;
  ContextDevicePlacementPolicy default_policy_;
  bool async_;
  bool run_eager_op_as_function_;
  bool jit_compile_rewrite_;

  // Device state
  DeviceMgr* device_mgr_ = nullptr;                    // non-owning alias
  std::unique_ptr<DeviceMgr> owned_device_mgr_;        // if we take ownership
  // Keep additional devices we adopt at runtime (simple storage for stub).
  std::vector<std::unique_ptr<Device>> owned_extra_;

  // Rendezvous (opaque; non-owning)
  Rendezvous* rendezvous_ = nullptr;

  // Thread pool placeholder & runner
  thread::ThreadPool thread_pool_;
  std::function<void(std::function<void()>)> runner_;

  // Per-thread placement policy
  mutable std::mutex policy_mu_;
  std::unordered_map<std::thread::id, ContextDevicePlacementPolicy> policy_map_;

  // Distributed manager (opaque, owned)
  std::unique_ptr<ImmediateExecutionDistributedManager> distributed_manager_;

  // Diagnostics
  std::atomic<bool> log_device_placement_{false};
  std::atomic<bool> allow_soft_placement_{true};

  // Identity
  uint64 context_id_;
};

}  // namespace tensorflow
