// tensorflow/core/public/config_stub.h
#ifndef TENSORFLOW_CORE_PUBLIC_CONFIG_STUB_H_
#define TENSORFLOW_CORE_PUBLIC_CONFIG_STUB_H_

#include <cstdint>
#include <map>
#include <memory>
#include <string>
#include <utility>
#include <vector>

// --- No-op attribute macros ---
#ifndef ABSL_ATTRIBUTE_LIFETIME_BOUND
#define ABSL_ATTRIBUTE_LIFETIME_BOUND
#endif
#ifndef ABSL_ATTRIBUTE_REINITIALIZES
#define ABSL_ATTRIBUTE_REINITIALIZES
#endif

namespace google {
namespace protobuf {

struct UnknownFieldSet {};
struct Metadata {};
class Arena {};

class MessageLite {
 public:
  virtual ~MessageLite() = default;
};
class Message : public MessageLite {
 public:
  virtual Message* New(Arena* = nullptr) const { return new Message(); }
  virtual void CopyFrom(const Message&) {}
  virtual void MergeFrom(const Message&) {}
};

template <typename T>
class RepeatedPtrField : public std::vector<T> {
  using Base = std::vector<T>;
 public:
  using Base::Base;
};

template <typename K, typename V>
using Map = std::map<K, V>;

namespace internal {
template <int N>
struct HasBits {
  explicit HasBits(int = 0) {}
};
struct CachedSize {
  int Get() const { return 0; }
  void Set(int) {}
};
template <typename T>
inline void GenericSwap(T* a, T* b) {
  using std::swap;
  swap(*a, *b);
}
template <int, int, int, int, int>
struct TcParseTable {};
struct ConstantInitialized {};
enum class InternalVisibility { kPublic };
}  // namespace internal

}  // namespace protobuf
}  // namespace google

namespace tensorflow {

// Minimal stubs for nested messages used by ConfigProto
struct ThreadPoolOptionProto {};
struct GPUOptions { /* add fields if needed */ };
struct GraphOptions {};
struct RPCOptions {};
struct ClusterDef {};
struct ConfigProto_Experimental {};

class ConfigProto : public ::google::protobuf::Message {
 public:
  using Experimental = ConfigProto_Experimental;

  // ---- lifecycle ----
  ConfigProto() : ConfigProto(nullptr) {}
  ~ConfigProto() override = default;

  explicit ConfigProto(::google::protobuf::Arena* /*arena*/) { Reset(); }

  // Deep-copy constructor
  ConfigProto(const ConfigProto& from) : ConfigProto(nullptr) { DeepCopyFrom(from); }

  // Arena copy-ctor (keep signature)
  ConfigProto(::google::protobuf::Arena* /*arena*/, const ConfigProto& from)
      : ConfigProto(nullptr) {
    DeepCopyFrom(from);
  }

  // Move constructor
  ConfigProto(ConfigProto&& from) noexcept { MoveFrom(std::move(from)); }

  // Arena move-ctor
  ConfigProto(::google::protobuf::Arena* /*arena*/, ConfigProto&& from) noexcept
      : ConfigProto(nullptr) {
    MoveFrom(std::move(from));
  }

  // Deep-copy assignment
  ConfigProto& operator=(const ConfigProto& from) {
    if (this != &from) DeepCopyFrom(from);
    return *this;
  }

  // Move assignment
  ConfigProto& operator=(ConfigProto&& from) noexcept {
    if (this != &from) MoveFrom(std::move(from));
    return *this;
  }

  // protobuf-ish API
  ConfigProto* New(::google::protobuf::Arena* arena = nullptr) const override {
    return arena ? new ConfigProto(arena) : new ConfigProto();
  }
  void CopyFrom(const ConfigProto& from) { DeepCopyFrom(from); }
  void MergeFrom(const ConfigProto& from) { DeepCopyFrom(from); }  // good enough for stub
  bool IsInitialized() const { return true; }
  void Clear() { Reset(); }

  const ::google::protobuf::UnknownFieldSet& unknown_fields() const ABSL_ATTRIBUTE_LIFETIME_BOUND {
    static ::google::protobuf::UnknownFieldSet kEmpty;
    return kEmpty;
  }
  ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() ABSL_ATTRIBUTE_LIFETIME_BOUND {
    static ::google::protobuf::UnknownFieldSet kEmpty;
    return &kEmpty;
  }

  friend void swap(ConfigProto& a, ConfigProto& b) { a.Swap(&b); }
  void Swap(ConfigProto* other) {
    if (other == this) return;
    using std::swap;
    swap(device_count_, other->device_count_);
    swap(device_filters_, other->device_filters_);
    swap(session_inter_op_thread_pool_, other->session_inter_op_thread_pool_);
    swap(gpu_options_, other->gpu_options_);
    swap(graph_options_, other->graph_options_);
    swap(rpc_options_, other->rpc_options_);
    swap(cluster_def_, other->cluster_def_);
    swap(experimental_, other->experimental_);
    swap(pluggable_device_options_, other->pluggable_device_options_);
    swap(intra_op_parallelism_threads_, other->intra_op_parallelism_threads_);
    swap(placement_period_, other->placement_period_);
    swap(inter_op_parallelism_threads_, other->inter_op_parallelism_threads_);
    swap(use_per_session_threads_, other->use_per_session_threads_);
    swap(allow_soft_placement_, other->allow_soft_placement_);
    swap(log_device_placement_, other->log_device_placement_);
    swap(isolate_session_state_, other->isolate_session_state_);
    swap(operation_timeout_in_ms_, other->operation_timeout_in_ms_);
    swap(share_cluster_devices_in_session_, other->share_cluster_devices_in_session_);
  }
  void UnsafeArenaSwap(ConfigProto* other) { Swap(other); }

  // ---- fields & accessors ----

  // map<string, int32> device_count = 1;
  int device_count_size() const { return static_cast<int>(device_count_.size()); }
  void clear_device_count() { device_count_.clear(); }
  const ::google::protobuf::Map<std::string, ::int32_t>& device_count() const { return device_count_; }
  ::google::protobuf::Map<std::string, ::int32_t>* mutable_device_count() { return &device_count_; }

  // repeated string device_filters = 4;
  int device_filters_size() const { return static_cast<int>(device_filters_.size()); }
  void clear_device_filters() { device_filters_.clear(); }
  const std::string& device_filters(int index) const { return device_filters_.at(index); }
  std::string* mutable_device_filters(int index) { return &device_filters_.at(index); }
  template <typename Arg_ = const std::string&, typename... Args_>
  void set_device_filters(int index, Arg_&& value, Args_...) {
    device_filters_.at(index) = std::string(std::forward<Arg_>(value));
  }
  std::string* add_device_filters() {
    device_filters_.emplace_back();
    return &device_filters_.back();
  }
  template <typename Arg_ = const std::string&, typename... Args_>
  void add_device_filters(Arg_&& value, Args_...) {
    device_filters_.emplace_back(std::forward<Arg_>(value));
  }
  const ::google::protobuf::RepeatedPtrField<std::string>& device_filters() const {
    return device_filters_;
  }
  ::google::protobuf::RepeatedPtrField<std::string>* mutable_device_filters() {
    return &device_filters_;
  }

  // repeated ThreadPoolOptionProto session_inter_op_thread_pool = 12;
  int session_inter_op_thread_pool_size() const {
    return static_cast<int>(session_inter_op_thread_pool_.size());
  }
  void clear_session_inter_op_thread_pool() { session_inter_op_thread_pool_.clear(); }
  ::tensorflow::ThreadPoolOptionProto* mutable_session_inter_op_thread_pool(int index) {
    return &session_inter_op_thread_pool_.at(index);
  }
  ::tensorflow::ThreadPoolOptionProto* add_session_inter_op_thread_pool() {
    session_inter_op_thread_pool_.emplace_back();
    return &session_inter_op_thread_pool_.back();
  }
  const ::tensorflow::ThreadPoolOptionProto& session_inter_op_thread_pool(int index) const {
    return session_inter_op_thread_pool_.at(index);
  }
  const ::google::protobuf::RepeatedPtrField<::tensorflow::ThreadPoolOptionProto>&
  session_inter_op_thread_pool() const {
    return session_inter_op_thread_pool_;
  }
  ::google::protobuf::RepeatedPtrField<::tensorflow::ThreadPoolOptionProto>*
  mutable_session_inter_op_thread_pool() {
    return &session_inter_op_thread_pool_;
  }

  // GPUOptions gpu_options = 6;
  bool has_gpu_options() const { return static_cast<bool>(gpu_options_); }
  void clear_gpu_options() { gpu_options_.reset(); }
  const ::tensorflow::GPUOptions& gpu_options() const {
    static ::tensorflow::GPUOptions kEmpty;
    return gpu_options_ ? *gpu_options_ : kEmpty;
  }
  ::tensorflow::GPUOptions* mutable_gpu_options() {
    if (!gpu_options_) gpu_options_.reset(new ::tensorflow::GPUOptions());
    return gpu_options_.get();
  }
  ::tensorflow::GPUOptions* release_gpu_options() { return gpu_options_.release(); }
  void set_allocated_gpu_options(::tensorflow::GPUOptions* value) { gpu_options_.reset(value); }
  void unsafe_arena_set_allocated_gpu_options(::tensorflow::GPUOptions* value) { set_allocated_gpu_options(value); }
  ::tensorflow::GPUOptions* unsafe_arena_release_gpu_options() { return release_gpu_options(); }

  // GraphOptions graph_options = 10;
  bool has_graph_options() const { return static_cast<bool>(graph_options_); }
  void clear_graph_options() { graph_options_.reset(); }
  const ::tensorflow::GraphOptions& graph_options() const {
    static ::tensorflow::GraphOptions kEmpty;
    return graph_options_ ? *graph_options_ : kEmpty;
  }
  ::tensorflow::GraphOptions* mutable_graph_options() {
    if (!graph_options_) graph_options_.reset(new ::tensorflow::GraphOptions());
    return graph_options_.get();
  }
  ::tensorflow::GraphOptions* release_graph_options() { return graph_options_.release(); }
  void set_allocated_graph_options(::tensorflow::GraphOptions* value) { graph_options_.reset(value); }
  void unsafe_arena_set_allocated_graph_options(::tensorflow::GraphOptions* value) {
    set_allocated_graph_options(value);
  }
  ::tensorflow::GraphOptions* unsafe_arena_release_graph_options() { return release_graph_options(); }

  // RPCOptions rpc_options = 13;
  bool has_rpc_options() const { return static_cast<bool>(rpc_options_); }
  void clear_rpc_options() { rpc_options_.reset(); }
  const ::tensorflow::RPCOptions& rpc_options() const {
    static ::tensorflow::RPCOptions kEmpty;
    return rpc_options_ ? *rpc_options_ : kEmpty;
  }
  ::tensorflow::RPCOptions* mutable_rpc_options() {
    if (!rpc_options_) rpc_options_.reset(new ::tensorflow::RPCOptions());
    return rpc_options_.get();
  }
  ::tensorflow::RPCOptions* release_rpc_options() { return rpc_options_.release(); }
  void set_allocated_rpc_options(::tensorflow::RPCOptions* value) { rpc_options_.reset(value); }
  void unsafe_arena_set_allocated_rpc_options(::tensorflow::RPCOptions* value) {
    set_allocated_rpc_options(value);
  }
  ::tensorflow::RPCOptions* unsafe_arena_release_rpc_options() { return release_rpc_options(); }

  // ClusterDef cluster_def = 14;
  bool has_cluster_def() const { return static_cast<bool>(cluster_def_); }
  void clear_cluster_def() { cluster_def_.reset(); }
  const ::tensorflow::ClusterDef& cluster_def() const {
    static ::tensorflow::ClusterDef kEmpty;
    return cluster_def_ ? *cluster_def_ : kEmpty;
  }
  ::tensorflow::ClusterDef* mutable_cluster_def() {
    if (!cluster_def_) cluster_def_.reset(new ::tensorflow::ClusterDef());
    return cluster_def_.get();
  }
  ::tensorflow::ClusterDef* release_cluster_def() { return cluster_def_.release(); }
  void set_allocated_cluster_def(::tensorflow::ClusterDef* value) { cluster_def_.reset(value); }
  void unsafe_arena_set_allocated_cluster_def(::tensorflow::ClusterDef* value) {
    set_allocated_cluster_def(value);
  }
  ::tensorflow::ClusterDef* unsafe_arena_release_cluster_def() { return release_cluster_def(); }

  // Experimental experimental = 16
  bool has_experimental() const { return static_cast<bool>(experimental_); }
  void clear_experimental() { experimental_.reset(); }
  const ::tensorflow::ConfigProto_Experimental& experimental() const {
    static ::tensorflow::ConfigProto_Experimental kEmpty;
    return experimental_ ? *experimental_ : kEmpty;
  }
  ::tensorflow::ConfigProto_Experimental* mutable_experimental() {
    if (!experimental_) experimental_.reset(new ::tensorflow::ConfigProto_Experimental());
    return experimental_.get();
  }
  ::tensorflow::ConfigProto_Experimental* release_experimental() { return experimental_.release(); }
  void set_allocated_experimental(::tensorflow::ConfigProto_Experimental* value) {
    experimental_.reset(value);
  }
  void unsafe_arena_set_allocated_experimental(::tensorflow::ConfigProto_Experimental* value) {
    set_allocated_experimental(value);
  }
  ::tensorflow::ConfigProto_Experimental* unsafe_arena_release_experimental() {
    return release_experimental();
  }

  // GPUOptions pluggable_device_options = 18;
  bool has_pluggable_device_options() const { return static_cast<bool>(pluggable_device_options_); }
  void clear_pluggable_device_options() { pluggable_device_options_.reset(); }
  const ::tensorflow::GPUOptions& pluggable_device_options() const {
    static ::tensorflow::GPUOptions kEmpty;
    return pluggable_device_options_ ? *pluggable_device_options_ : kEmpty;
  }
  ::tensorflow::GPUOptions* mutable_pluggable_device_options() {
    if (!pluggable_device_options_) pluggable_device_options_.reset(new ::tensorflow::GPUOptions());
    return pluggable_device_options_.get();
  }
  ::tensorflow::GPUOptions* release_pluggable_device_options() {
    return pluggable_device_options_.release();
  }
  void set_allocated_pluggable_device_options(::tensorflow::GPUOptions* value) {
    pluggable_device_options_.reset(value);
  }
  void unsafe_arena_set_allocated_pluggable_device_options(::tensorflow::GPUOptions* value) {
    set_allocated_pluggable_device_options(value);
  }
  ::tensorflow::GPUOptions* unsafe_arena_release_pluggable_device_options() {
    return release_pluggable_device_options();
  }

  // Scalars
  void clear_intra_op_parallelism_threads() { intra_op_parallelism_threads_ = 0; }
  ::int32_t intra_op_parallelism_threads() const { return intra_op_parallelism_threads_; }
  void set_intra_op_parallelism_threads(::int32_t v) { intra_op_parallelism_threads_ = v; }

  void clear_placement_period() { placement_period_ = 0; }
  ::int32_t placement_period() const { return placement_period_; }
  void set_placement_period(::int32_t v) { placement_period_ = v; }

  void clear_inter_op_parallelism_threads() { inter_op_parallelism_threads_ = 0; }
  ::int32_t inter_op_parallelism_threads() const { return inter_op_parallelism_threads_; }
  void set_inter_op_parallelism_threads(::int32_t v) { inter_op_parallelism_threads_ = v; }

  void clear_use_per_session_threads() { use_per_session_threads_ = false; }
  bool use_per_session_threads() const { return use_per_session_threads_; }
  void set_use_per_session_threads(bool v) { use_per_session_threads_ = v; }

  void clear_allow_soft_placement() { allow_soft_placement_ = true; }
  bool allow_soft_placement() const { return allow_soft_placement_; }
  void set_allow_soft_placement(bool v) { allow_soft_placement_ = v; }

  void clear_log_device_placement() { log_device_placement_ = false; }
  bool log_device_placement() const { return log_device_placement_; }
  void set_log_device_placement(bool v) { log_device_placement_ = v; }

  void clear_isolate_session_state() { isolate_session_state_ = false; }
  bool isolate_session_state() const { return isolate_session_state_; }
  void set_isolate_session_state(bool v) { isolate_session_state_ = v; }

  void clear_operation_timeout_in_ms() { operation_timeout_in_ms_ = 0; }
  ::int64_t operation_timeout_in_ms() const { return operation_timeout_in_ms_; }
  void set_operation_timeout_in_ms(::int64_t v) { operation_timeout_in_ms_ = v; }

  void clear_share_cluster_devices_in_session() { share_cluster_devices_in_session_ = false; }
  bool share_cluster_devices_in_session() const { return share_cluster_devices_in_session_; }
  void set_share_cluster_devices_in_session(bool v) { share_cluster_devices_in_session_ = v; }

  static constexpr int kIndexInFileMessages = 10;

 private:
  void Reset() {
    device_count_.clear();
    device_filters_.clear();
    session_inter_op_thread_pool_.clear();
    gpu_options_.reset();
    graph_options_.reset();
    rpc_options_.reset();
    cluster_def_.reset();
    experimental_.reset();
    pluggable_device_options_.reset();
    intra_op_parallelism_threads_ = 0;
    placement_period_ = 0;
    inter_op_parallelism_threads_ = 0;
    use_per_session_threads_ = false;
    allow_soft_placement_ = true;
    log_device_placement_ = false;
    isolate_session_state_ = false;
    operation_timeout_in_ms_ = 0;
    share_cluster_devices_in_session_ = false;
  }

  void DeepCopyFrom(const ConfigProto& from) {
    device_count_ = from.device_count_;
    device_filters_ = from.device_filters_;
    session_inter_op_thread_pool_ = from.session_inter_op_thread_pool_;

    gpu_options_.reset(from.gpu_options_ ? new GPUOptions(*from.gpu_options_) : nullptr);
    graph_options_.reset(from.graph_options_ ? new GraphOptions(*from.graph_options_) : nullptr);
    rpc_options_.reset(from.rpc_options_ ? new RPCOptions(*from.rpc_options_) : nullptr);
    cluster_def_.reset(from.cluster_def_ ? new ClusterDef(*from.cluster_def_) : nullptr);
    experimental_.reset(from.experimental_ ? new ConfigProto_Experimental(*from.experimental_) : nullptr);
    pluggable_device_options_.reset(
        from.pluggable_device_options_ ? new GPUOptions(*from.pluggable_device_options_) : nullptr);

    intra_op_parallelism_threads_ = from.intra_op_parallelism_threads_;
    placement_period_ = from.placement_period_;
    inter_op_parallelism_threads_ = from.inter_op_parallelism_threads_;
    use_per_session_threads_ = from.use_per_session_threads_;
    allow_soft_placement_ = from.allow_soft_placement_;
    log_device_placement_ = from.log_device_placement_;
    isolate_session_state_ = from.isolate_session_state_;
    operation_timeout_in_ms_ = from.operation_timeout_in_ms_;
    share_cluster_devices_in_session_ = from.share_cluster_devices_in_session_;
  }

  void MoveFrom(ConfigProto&& from) noexcept {
    device_count_ = std::move(from.device_count_);
    device_filters_ = std::move(from.device_filters_);
    session_inter_op_thread_pool_ = std::move(from.session_inter_op_thread_pool_);
    gpu_options_ = std::move(from.gpu_options_);
    graph_options_ = std::move(from.graph_options_);
    rpc_options_ = std::move(from.rpc_options_);
    cluster_def_ = std::move(from.cluster_def_);
    experimental_ = std::move(from.experimental_);
    pluggable_device_options_ = std::move(from.pluggable_device_options_);
    intra_op_parallelism_threads_ = from.intra_op_parallelism_threads_;
    placement_period_ = from.placement_period_;
    inter_op_parallelism_threads_ = from.inter_op_parallelism_threads_;
    use_per_session_threads_ = from.use_per_session_threads_;
    allow_soft_placement_ = from.allow_soft_placement_;
    log_device_placement_ = from.log_device_placement_;
    isolate_session_state_ = from.isolate_session_state_;
    operation_timeout_in_ms_ = from.operation_timeout_in_ms_;
    share_cluster_devices_in_session_ = from.share_cluster_devices_in_session_;
    // leave 'from' in a valid state
    from.Reset();
  }

  // storage
  ::google::protobuf::Map<std::string, ::int32_t> device_count_;
  ::google::protobuf::RepeatedPtrField<std::string> device_filters_;
  ::google::protobuf::RepeatedPtrField<::tensorflow::ThreadPoolOptionProto>
      session_inter_op_thread_pool_;

  std::unique_ptr<::tensorflow::GPUOptions> gpu_options_;
  std::unique_ptr<::tensorflow::GraphOptions> graph_options_;
  std::unique_ptr<::tensorflow::RPCOptions> rpc_options_;
  std::unique_ptr<::tensorflow::ClusterDef> cluster_def_;
  std::unique_ptr<::tensorflow::ConfigProto_Experimental> experimental_;
  std::unique_ptr<::tensorflow::GPUOptions> pluggable_device_options_;

  ::int32_t  intra_op_parallelism_threads_ = 0;
  ::int32_t  placement_period_ = 0;
  ::int32_t  inter_op_parallelism_threads_ = 0;
  bool       use_per_session_threads_ = false;
  bool       allow_soft_placement_ = true;
  bool       log_device_placement_ = false;
  bool       isolate_session_state_ = false;
  ::int64_t  operation_timeout_in_ms_ = 0;
  bool       share_cluster_devices_in_session_ = false;
};

}  // namespace tensorflow

#endif  // TENSORFLOW_CORE_PUBLIC_CONFIG_STUB_H_
