#include "tensorflow/core/ops/audio_ops.h"
#include "tensorflow/core/framework/shape_inference.h"
using tensorflow::InferenceContext;
int main() {
    tensorflow::InferenceContext ictx;
    SpectrogramShapeFn(&ictx);

}