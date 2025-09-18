// device_attributes_stub.h
#pragma once

#include <cstdint>
#include <memory>
#include <string>
#include <utility>

namespace tensorflow {

// Minimal stub for DeviceLocality so callers can take/return pointers.
// Expand if your build actually reads any fields from it.
struct DeviceLocality {
  // Add fields if your code needs them, otherwise this stays empty.
  DeviceLocality() = default;
  DeviceLocality(const DeviceLocality&) = default;
  DeviceLocality& operator=(const DeviceLocality&) = default;
};

// Dependency-free stub of tensorflow::DeviceAttributes.
// Mirrors the getters/setters used throughout TF without protobuf deps.
class DeviceAttributes {
 public:
  // ----- ctors / dtor / assignment -----
  DeviceAttributes() = default;
  ~DeviceAttributes() = default;

  DeviceAttributes(const DeviceAttributes& other)
      : name_(other.name_),
        device_type_(other.device_type_),
        physical_device_desc_(other.physical_device_desc_),
        locality_(other.locality_ ? std::make_unique<DeviceLocality>(*other.locality_) : nullptr),
        memory_limit_(other.memory_limit_),
        incarnation_(other.incarnation_),
        xla_global_id_(other.xla_global_id_) {}

  DeviceAttributes(DeviceAttributes&& other) noexcept { Swap(&other); }

  DeviceAttributes& operator=(const DeviceAttributes& other) {
    if (this == &other) return *this;
    name_                 = other.name_;
    device_type_          = other.device_type_;
    physical_device_desc_ = other.physical_device_desc_;
    locality_.reset(other.locality_ ? new DeviceLocality(*other.locality_) : nullptr);
    memory_limit_   = other.memory_limit_;
    incarnation_    = other.incarnation_;
    xla_global_id_  = other.xla_global_id_;
    return *this;
  }

  DeviceAttributes& operator=(DeviceAttributes&& other) noexcept {
    if (this != &other) Swap(&other);
    return *this;
  }

  friend void swap(DeviceAttributes& a, DeviceAttributes& b) { a.Swap(&b); }
  void Swap(DeviceAttributes* other) {
    if (other == this) return;
    using std::swap;
    swap(name_, other->name_);
    swap(device_type_, other->device_type_);
    swap(physical_device_desc_, other->physical_device_desc_);
    swap(locality_, other->locality_);
    swap(memory_limit_, other->memory_limit_);
    swap(incarnation_, other->incarnation_);
    swap(xla_global_id_, other->xla_global_id_);
  }

  // ----- field numbers (some code references these enums) -----
  enum : int {
    kNameFieldNumber                = 1,
    kDeviceTypeFieldNumber          = 2,
    kPhysicalDeviceDescFieldNumber  = 7,
    kLocalityFieldNumber            = 5,
    kMemoryLimitFieldNumber         = 4,
    kIncarnationFieldNumber         = 6,
    kXlaGlobalIdFieldNumber         = 8,
  };

  // ----- name -----
  void clear_name() { name_.clear(); }
  const std::string& name() const { return name_; }

  // Keep a generic template like the proto API accepts; typical calls
  // are set_name("...") or set_name(std::string).
  template <typename Arg_ = const std::string&, typename... Args_>
  void set_name(Arg_&& arg, Args_... /*unused*/) {
    name_ = std::string(std::forward<Arg_>(arg));
  }
  std::string* mutable_name() { return &name_; }
  std::string* release_name() {
    auto* p = new std::string(std::move(name_));
    name_.clear();
    return p;
  }
  void set_allocated_name(std::string* value) {
    if (value) {
      name_.assign(std::move(*value));
      delete value;
    } else {
      name_.clear();
    }
  }

  // ----- device_type -----
  void clear_device_type() { device_type_.clear(); }
  const std::string& device_type() const { return device_type_; }
  template <typename Arg_ = const std::string&, typename... Args_>
  void set_device_type(Arg_&& arg, Args_... /*unused*/) {
    device_type_ = std::string(std::forward<Arg_>(arg));
  }
  std::string* mutable_device_type() { return &device_type_; }
  std::string* release_device_type() {
    auto* p = new std::string(std::move(device_type_));
    device_type_.clear();
    return p;
  }
  void set_allocated_device_type(std::string* value) {
    if (value) {
      device_type_.assign(std::move(*value));
      delete value;
    } else {
      device_type_.clear();
    }
  }

  // ----- physical_device_desc -----
  void clear_physical_device_desc() { physical_device_desc_.clear(); }
  const std::string& physical_device_desc() const { return physical_device_desc_; }
  template <typename Arg_ = const std::string&, typename... Args_>
  void set_physical_device_desc(Arg_&& arg, Args_... /*unused*/) {
    physical_device_desc_ = std::string(std::forward<Arg_>(arg));
  }
  std::string* mutable_physical_device_desc() { return &physical_device_desc_; }
  std::string* release_physical_device_desc() {
    auto* p = new std::string(std::move(physical_device_desc_));
    physical_device_desc_.clear();
    return p;
  }
  void set_allocated_physical_device_desc(std::string* value) {
    if (value) {
      physical_device_desc_.assign(std::move(*value));
      delete value;
    } else {
      physical_device_desc_.clear();
    }
  }

  // ----- locality (optional message) -----
  bool has_locality() const { return static_cast<bool>(locality_); }
  void clear_locality() { locality_.reset(); }

  const DeviceLocality& locality() const {
    return locality_ ? *locality_ : DefaultLocality();
  }
  DeviceLocality* mutable_locality() {
    if (!locality_) locality_.reset(new DeviceLocality());
    return locality_.get();
  }
  DeviceLocality* release_locality() { return locality_.release(); }
  void set_allocated_locality(DeviceLocality* value) { locality_.reset(value); }

  // “unsafe_arena_…” synonyms to match the proto API shape used by TF
  void unsafe_arena_set_allocated_locality(DeviceLocality* value) { set_allocated_locality(value); }
  DeviceLocality* unsafe_arena_release_locality() { return release_locality(); }

  // ----- memory_limit (int64) -----
  void clear_memory_limit() { memory_limit_ = 0; }
  std::int64_t memory_limit() const { return memory_limit_; }
  void set_memory_limit(std::int64_t v) { memory_limit_ = v; }

  // ----- incarnation (fixed64 / uint64) -----
  void clear_incarnation() { incarnation_ = 0; }
  std::uint64_t incarnation() const { return incarnation_; }
  void set_incarnation(std::uint64_t v) { incarnation_ = v; }

  // ----- xla_global_id (int64) -----
  void clear_xla_global_id() { xla_global_id_ = 0; }
  std::int64_t xla_global_id() const { return xla_global_id_; }
  void set_xla_global_id(std::int64_t v) { xla_global_id_ = v; }

  // ----- convenience: clear whole message -----
  void Clear() {
    clear_name();
    clear_device_type();
    clear_physical_device_desc();
    clear_locality();
    clear_memory_limit();
    clear_incarnation();
    clear_xla_global_id();
  }

 private:
  static const DeviceLocality& DefaultLocality() {
    static const DeviceLocality kDefault;
    return kDefault;
  }

  // ----- fields -----
  std::string name_;
  std::string device_type_;
  std::string physical_device_desc_;
  std::unique_ptr<DeviceLocality> locality_;
  std::int64_t memory_limit_ = 0;
  std::uint64_t incarnation_ = 0;
  std::int64_t xla_global_id_ = 0;
};

}  // namespace tensorflow
