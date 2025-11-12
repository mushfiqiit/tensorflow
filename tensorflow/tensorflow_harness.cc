#include "tensorflow/lite/kernels/conv.h"
#include <stdlib.h>

static TfLiteIntArray* MakeIntArray(int n) {
#if defined(_MSC_VER)
  // MSVC layout uses data[1], so only (n-1) extra ints are needed
  const size_t bytes = sizeof(TfLiteIntArray) + sizeof(int) * (n - 1);
#else
  const size_t bytes = sizeof(TfLiteIntArray) + sizeof(int) * n;
#endif
  auto* p = static_cast<TfLiteIntArray*>(std::malloc(bytes));  // ✅ cast in C++
  if (!p) return nullptr;
  p->size = n;
  return p;
}

int main()
{
    TfLiteContext context_;
    
    // 1) Allocate a tensor arena in the context
    context_.tensors_size = 4; // must be > max tensor id you’ll reference
    context_.tensors = static_cast<TfLiteTensor*>(
        std::malloc(10*sizeof(TfLiteTensor)));  // zero-inits
      

    TfLiteNode node;
    auto* data = new OpData();     // runs constructor; groups starts at 1
    node.user_data = data;
    node.inputs=MakeIntArray(3);
    node.inputs->data[0]=0; node.inputs->data[1]=1; node.inputs->data[2]=2;
    node.inputs->data[0]=1;
    auto a=Prepare(kReference, &context_, &node);
    
}