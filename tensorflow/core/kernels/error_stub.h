namespace errors {

class InvalidArgument {
 public:
  explicit InvalidArgument(const std::string& msg) : message_(msg) {}

  std::string ToString() const { return message_; }

 private:
  std::string message_;
};

}  // namespace errors
