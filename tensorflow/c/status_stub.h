// tensorflow/core/platform/status_stub.h
#pragma once

#include <functional>
#include <memory>
#include <ostream>
#include <sstream>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

namespace tensorflow {

// Minimal forward stubs to avoid external headers.
namespace error {
  // We only need the type; callers generally treat 0 as OK.
  // Forward-declare with fixed underlying type so we can cast safely.
  enum Code : int;
}

// A tiny SourceLocation & StackFrame stub so default parameters compile.
struct SourceLocation {
  static SourceLocation current() { return {}; }
};
struct StackFrame {};

// -------- Status (dependency-free stub) ----------
class Status {
 public:
  /// Create a success status.
  Status() = default;

  /// Create a non-OK status with error code and message.
  /// This is the overload your TF_SetStatus() call needs.
  Status(tensorflow::error::Code code, const char* msg) {
    if (static_cast<int>(code) != 0) {
      EnsureState();
      state_->code_int = static_cast<int>(code);
      state_->msg = msg ? msg : "";
    }
  }
  /// Convenience overload accepting std::string.
  Status(tensorflow::error::Code code, const std::string& msg)
      : Status(code, msg.c_str()) {}

  /// Copy / move
  Status(const Status& s) { SlowCopyFrom(s.state_.get()); }
  Status& operator=(const Status& s) {
    if (this != &s) SlowCopyFrom(s.state_.get());
    return *this;
  }

  Status(Status&& s, SourceLocation /*loc*/ = SourceLocation::current()) noexcept
      : state_(std::move(s.state_)) {}
  Status& operator=(Status&& s) noexcept {
    if (this != &s) state_ = std::move(s.state_);
    return *this;
  }

  // Prefer using OkStatus().
  static Status OK() { return Status(); }

  /// Returns true iff the status indicates success.
  bool ok() const { return state_ == nullptr; }

  tensorflow::error::Code code() const {
    // We avoid depending on a named enumerator like error::OK by casting 0.
    return static_cast<tensorflow::error::Code>( ok() ? 0 : state_->code_int );
  }

  const std::string& error_message() const {
    return ok() ? empty_string() : state_->msg;
  }

  bool operator==(const Status& x) const {
    if (ok() && x.ok()) return true;
    if (ok() != x.ok()) return false;
    return state_->code_int == x.state_->code_int && state_->msg == x.state_->msg;
  }
  bool operator!=(const Status& x) const { return !(*this == x); }

  // If `ok()`, stores `new_status` into `*this`. Otherwise, keep first error.
  void Update(const Status& new_status) {
    if (ok() && !new_status.ok()) {
      SlowCopyFrom(new_status.state_.get());
    }
  }

  // Human-readable string; format is not guaranteed to be stable.
  std::string ToString() const {
    if (ok()) return "OK";
    std::ostringstream oss;
    oss << "Code(" << state_->code_int << "): " << state_->msg;
    if (!state_->payloads.empty()) {
      oss << " [payloads:";
      for (const auto& kv : state_->payloads) {
        oss << " {" << kv.first << "}=" << kv.second;
      }
      oss << "]";
    }
    return oss.str();
  }

  // Silences "unused status" tools; no-op here.
  void IgnoreError() const {}

  // ---------------- Payload API (string->string) ----------------
  void SetPayload(const std::string& type_url, const std::string& payload) {
    if (ok()) return;
    state_->payloads[type_url] = payload;
  }

  void ForEachPayload(
      const std::function<void(const std::string&, const std::string&)>& visitor) const {
    if (ok()) return;
    for (const auto& kv : state_->payloads) visitor(kv.first, kv.second);
  }

  // ---------------- Stack trace API (no-op storage) -------------
  void SetStackTrace(std::vector<StackFrame> frames) {
    EnsureState();
    state_->stack_trace = std::move(frames);
  }
  std::vector<StackFrame> GetStackTrace() const {
    return ok() ? std::vector<StackFrame>() : state_->stack_trace;
  }

  // Source locations in this stub are collected only if explicitly added.
  // We keep the hook to match the original signature surface.
  void MaybeAddSourceLocation(SourceLocation /*loc*/) {
    // Optional: store if you want
  }

 private:
  static const std::string& empty_string() {
    static const std::string* empty = new std::string();
    return *empty;
  }

  struct State {
    int code_int = 0;  // store as int to avoid depending on a concrete enum
    std::string msg;
    std::unordered_map<std::string, std::string> payloads;
    std::vector<StackFrame> stack_trace;
  };

  void EnsureState() {
    if (!state_) state_ = std::make_unique<State>();
  }

  void SlowCopyFrom(const State* src) {
    if (src == nullptr) {
      state_.reset();
    } else {
      if (!state_) state_ = std::make_unique<State>();
      state_->code_int    = src->code_int;
      state_->msg         = src->msg;
      state_->payloads    = src->payloads;
      state_->stack_trace = src->stack_trace;
    }
  }

  // OK status has a null state_. Otherwise it points to details.
  std::unique_ptr<State> state_;
};

// Free helper to mirror common TF usage.
inline Status OkStatus() { return Status(); }

// Stream operator to fix "no viable operator<<" errors when logging Status.
inline std::ostream& operator<<(std::ostream& os, const Status& s) {
  return os << s.ToString();
}

}  // namespace tensorflow
