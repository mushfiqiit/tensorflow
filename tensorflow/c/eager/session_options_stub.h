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

namespace tensorflow {

//#include <string>


/// Configuration information for a Session.
struct SessionOptions {
  struct Env {};                 // Opaque; unused here.
  Env* env = nullptr;
  std::string target;
  struct ConfigProtoStub {       // We don't pull the real ConfigProto.
    ConfigProtoStub() = default;
  } config;
  SessionOptions() = default;
};

}  // end namespace tensorflow