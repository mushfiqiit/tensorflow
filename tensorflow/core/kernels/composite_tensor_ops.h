#include "tensorflow/core/framework/op_kernel.h"
#include "tensorflow/core/framework/tensor.h"


namespace tensorflow {


class CompositeTensorVariantToComponents : public OpKernel {
 public:
    void Compute(OpKernelContext* context) override {
        Tensor encoded_t = context->input(0);
        auto* encoded = encoded_t.flat<Variant>()(0).get<CompositeTensorVariant>();
        auto expected_class = metadata_.type_spec_proto().type_spec_class();
        auto actual_class = encoded->metadata().type_spec_proto().type_spec_class();
        
    }
    CompositeTensorVariantMetadata metadata_;
};
}  // namespace tensorflow