// saved_tensor_slices_stub.h
#pragma once
#include <string>
#include <utility>

namespace tensorflow {

// ----- Forward stubs for the nested message types the proto exposes -----
class SavedTensorSliceMeta {
 public:
  SavedTensorSliceMeta() = default;
  SavedTensorSliceMeta(const SavedTensorSliceMeta&) = default;
  SavedTensorSliceMeta& operator=(const SavedTensorSliceMeta&) = default;
  ~SavedTensorSliceMeta() = default;

  // Add minimal knobs here if some callsites need to read/set fields.
};

class SavedSlice {
 public:
  SavedSlice() = default;
  SavedSlice(const SavedSlice&) = default;
  SavedSlice& operator=(const SavedSlice&) = default;
  ~SavedSlice() = default;

  // Add minimal knobs here if some callsites need to read/set fields.
};

// ----- Minimal, dependency-free stub of the protobuf message -----
// Mirrors the field layout: message SavedTensorSlices { meta:1; data:2; }
class SavedTensorSlices {
 public:
  SavedTensorSlices() = default;
  SavedTensorSlices(const SavedTensorSlices& other) {
    if (other.meta_)  meta_.reset(new SavedTensorSliceMeta(*other.meta_));
    if (other.data_)  data_.reset(new SavedSlice(*other.data_));
  }
  SavedTensorSlices& operator=(const SavedTensorSlices& other) {
    if (this == &other) return *this;
    if (other.meta_)  meta_.reset(new SavedTensorSliceMeta(*other.meta_)); else meta_.reset();
    if (other.data_)  data_.reset(new SavedSlice(*other.data_)); else data_.reset();
    return *this;
  }
  SavedTensorSlices(SavedTensorSlices&&) noexcept = default;
  SavedTensorSlices& operator=(SavedTensorSlices&&) noexcept = default;
  ~SavedTensorSlices() = default;

  // ---- field: meta (SavedTensorSliceMeta = 1) ----
  bool has_meta() const { return static_cast<bool>(meta_); }
  void clear_meta() { meta_.reset(); }
  const SavedTensorSliceMeta& meta() const {
    static const SavedTensorSliceMeta kEmpty;
    return meta_ ? *meta_ : kEmpty;
  }
  SavedTensorSliceMeta* mutable_meta() {
    if (!meta_) meta_.reset(new SavedTensorSliceMeta());
    return meta_.get();
  }
  // "release" / "set_allocated" patterns used by some callsites
  SavedTensorSliceMeta* release_meta() {
    return meta_.release();
  }
  void set_allocated_meta(SavedTensorSliceMeta* p) {
    meta_.reset(p);
  }
  // Arena variants become simple aliases in the stub
  void unsafe_arena_set_allocated_meta(SavedTensorSliceMeta* p) {
    meta_.reset(p);
  }
  SavedTensorSliceMeta* unsafe_arena_release_meta() {
    return meta_.release();
  }

  // ---- field: data (SavedSlice = 2) ----
  bool has_data() const { return static_cast<bool>(data_); }
  void clear_data() { data_.reset(); }
  const SavedSlice& data() const {
    static const SavedSlice kEmpty;
    return data_ ? *data_ : kEmpty;
  }
  SavedSlice* mutable_data() {
    if (!data_) data_.reset(new SavedSlice());
    return data_.get();
  }
  SavedSlice* release_data() {
    return data_.release();
  }
  void set_allocated_data(SavedSlice* p) {
    data_.reset(p);
  }
  void unsafe_arena_set_allocated_data(SavedSlice* p) {
    data_.reset(p);
  }
  SavedSlice* unsafe_arena_release_data() {
    return data_.release();
  }

  // ---- dumb protobuf-like API used by readers; no-ops in the stub ----
  bool ParseFromArray(const void*, int) { return true; }
  bool ParseFromString(const std::string&) { return true; }
  bool SerializeToString(std::string*) const { return true; }
  void Clear() { meta_.reset(); data_.reset(); }
  bool IsInitialized() const { return true; }

 private:
  struct Deleter {
    void operator()(SavedTensorSliceMeta* p) const { delete p; }
    void operator()(SavedSlice* p) const { delete p; }
  };
  std::unique_ptr<SavedTensorSliceMeta, Deleter> meta_;
  std::unique_ptr<SavedSlice, Deleter>           data_;
};

}  // namespace tensorflow
