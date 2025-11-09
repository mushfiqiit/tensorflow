#include "tensorflow/lite/kernels/conv.h"

int main()
{
    TfLiteContext context_;
    TfLiteNode node;
    auto a=Prepare(kReference, &context_, &node);
    
}