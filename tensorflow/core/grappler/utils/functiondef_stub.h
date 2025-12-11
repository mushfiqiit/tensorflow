#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

namespace tensorflow {

// -----------------------------------------------------------------------------
// Minimal placeholder types used by FunctionDef
// -----------------------------------------------------------------------------

// Stub for tensorflow::NodeDef
struct NodeDef {
  // Extend as needed for your use case.
};

// Stub for tensorflow::AttrValue
struct AttrValue {
  // Extend as needed for your use case.
};

// Stub for tensorflow::OpDef (function signature)
struct OpDef {
  // Extend as needed for your use case.
};

// Stub for tensorflow::FunctionDef_ArgAttrs
struct FunctionDef_ArgAttrs {
  // In real TF, this holds attribute metadata per argument.
  // Here we approximate it as a simple map from name -> AttrValue.
  std::unordered_map<std::string, AttrValue> attr;

  bool empty() const { return attr.empty(); }
  void Clear() { attr.clear(); }
};

// -----------------------------------------------------------------------------
// Stub for tensorflow::FunctionDef
// -----------------------------------------------------------------------------

class FunctionDef {
public:
  using ArgAttrs = FunctionDef_ArgAttrs;

  // ---------------------------------------------------------------------------
  // ctors / assignment
  // ---------------------------------------------------------------------------
  FunctionDef() = default;
  FunctionDef(const FunctionDef&) = default;
  FunctionDef(FunctionDef&&) noexcept = default;
  FunctionDef& operator=(const FunctionDef&) = default;
  FunctionDef& operator=(FunctionDef&&) noexcept = default;

  // ---------------------------------------------------------------------------
  // node_def: repeated NodeDef node_def = 3;
  // ---------------------------------------------------------------------------
  int node_def_size() const {
    return static_cast<int>(node_def_.size());
  }

  void clear_node_def() {
    node_def_.clear();
  }

  const NodeDef& node_def(int index) const {
    return node_def_.at(static_cast<std::size_t>(index));
  }

  NodeDef* mutable_node_def(int index) {
    return &node_def_.at(static_cast<std::size_t>(index));
  }

  std::vector<NodeDef>* mutable_node_def() {
    return &node_def_;
  }

  const std::vector<NodeDef>& node_def() const {
    return node_def_;
  }

  NodeDef* add_node_def() {
    node_def_.emplace_back();
    return &node_def_.back();
  }

  // ---------------------------------------------------------------------------
  // ret: map<string, string> ret = 4;
  // ---------------------------------------------------------------------------
  int ret_size() const {
    return static_cast<int>(ret_.size());
  }

  void clear_ret() {
    ret_.clear();
  }

  const std::unordered_map<std::string, std::string>& ret() const {
    return ret_;
  }

  std::unordered_map<std::string, std::string>* mutable_ret() {
    return &ret_;
  }

  // ---------------------------------------------------------------------------
  // attr: map<string, AttrValue> attr = 5;
  // ---------------------------------------------------------------------------
  int attr_size() const {
    return static_cast<int>(attr_.size());
  }

  void clear_attr() {
    attr_.clear();
  }

  const std::unordered_map<std::string, AttrValue>& attr() const {
    return attr_;
  }

  std::unordered_map<std::string, AttrValue>* mutable_attr() {
    return &attr_;
  }

  // ---------------------------------------------------------------------------
  // control_ret: map<string, string> control_ret = 6;
  // ---------------------------------------------------------------------------
  int control_ret_size() const {
    return static_cast<int>(control_ret_.size());
  }

  void clear_control_ret() {
    control_ret_.clear();
  }

  const std::unordered_map<std::string, std::string>& control_ret() const {
    return control_ret_;
  }

  std::unordered_map<std::string, std::string>* mutable_control_ret() {
    return &control_ret_;
  }

  // ---------------------------------------------------------------------------
  // arg_attr: map<uint32, FunctionDef.ArgAttrs> arg_attr = 7;
  // ---------------------------------------------------------------------------
  int arg_attr_size() const {
    return static_cast<int>(arg_attr_.size());
  }

  void clear_arg_attr() {
    arg_attr_.clear();
  }

  const std::unordered_map<std::uint32_t, ArgAttrs>& arg_attr() const {
    return arg_attr_;
  }

  std::unordered_map<std::uint32_t, ArgAttrs>* mutable_arg_attr() {
    return &arg_attr_;
  }

  // ---------------------------------------------------------------------------
  // resource_arg_unique_id: map<uint32, uint32> resource_arg_unique_id = 8;
  // ---------------------------------------------------------------------------
  int resource_arg_unique_id_size() const {
    return static_cast<int>(resource_arg_unique_id_.size());
  }

  void clear_resource_arg_unique_id() {
    resource_arg_unique_id_.clear();
  }

  const std::unordered_map<std::uint32_t, std::uint32_t>&
  resource_arg_unique_id() const {
    return resource_arg_unique_id_;
  }

  std::unordered_map<std::uint32_t, std::uint32_t>*
  mutable_resource_arg_unique_id() {
    return &resource_arg_unique_id_;
  }

  // ---------------------------------------------------------------------------
  // signature: OpDef signature = 1;
  // ---------------------------------------------------------------------------
  bool has_signature() const {
    return has_signature_;
  }

  void clear_signature() {
    has_signature_ = false;
    signature_ = OpDef{};
  }

  const OpDef& signature() const {
    return signature_;
  }

  OpDef* mutable_signature() {
    has_signature_ = true;
    return &signature_;
  }

  // This mimics protobuf's "release_*" semantics by heap-allocating a copy.
  OpDef* release_signature() {
    if (!has_signature_) {
      return nullptr;
    }
    has_signature_ = false;
    return new OpDef(signature_);
  }

  void set_allocated_signature(OpDef* value) {
    if (value) {
      signature_ = *value;
      has_signature_ = true;
    } else {
      clear_signature();
    }
  }

  // ---------------------------------------------------------------------------
  // protobuf-like utility methods (approximations)
  // ---------------------------------------------------------------------------
  void Clear() {
    clear_node_def();
    clear_ret();
    clear_attr();
    clear_control_ret();
    clear_arg_attr();
    clear_resource_arg_unique_id();
    clear_signature();
  }

  bool IsInitialized() const {
    // In real protobuf this would check required fields.
    // TensorFlow FunctionDefs usually don't use "required", so we just return true.
    return true;
  }

private:
  std::vector<NodeDef> node_def_;
  std::unordered_map<std::string, std::string> ret_;
  std::unordered_map<std::string, AttrValue> attr_;
  std::unordered_map<std::string, std::string> control_ret_;
  std::unordered_map<std::uint32_t, ArgAttrs> arg_attr_;
  std::unordered_map<std::uint32_t, std::uint32_t> resource_arg_unique_id_;
  bool has_signature_ = false;
  OpDef signature_;
};

}  // namespace tensorflow
