// // //
// // //
#ifndef TENSORFLOW_CORE_GRAPPLER_UTILS_FUNCTIONS_H_
#define TENSORFLOW_CORE_GRAPPLER_UTILS_FUNCTIONS_H_
// // //
// // // #include <memory>
// // // #include <string>
// // //
// // // #include "absl/container/flat_hash_map.h"
// // // #include "absl/container/flat_hash_set.h"
// // // #include "absl/container/inlined_vector.h"
// // // #include "tensorflow/core/framework/attr_value.pb.h"
#include "tensorflow/core/framework/function.h"
// // // #include "tensorflow/core/framework/function.pb.h"
#include "tensorflow/core/platform/status.h"
 #include "tensorflow/core/framework/node_def_util.h"
// // // #include "tensorflow/core/framework/op_def.pb.h"
 #include "tensorflow/core/grappler/grappler_item.h"
// // // #include "tensorflow/core/lib/gtl/flatset.h"
#include "functiondef_stub.h"

namespace tensorflow {
namespace grappler {
// // //
// // // // Function input argument instantiated into an '_Arg' node in the function body
// // // // graph, with an 'index' attribute corresponding to the input position.
 struct InputArgInstantiation {
// // //   InputArgInstantiation(string node_name, DataType data_type)
// // //       : node_name(std::move(node_name)), data_type(data_type) {}
// // //   string node_name;
// // //   DataType data_type;
 };
// // //
// // // // Function output instantiated into a '_Retval' node in the function body
// // // // graph, with an 'index' attribute corresponding to the output position.
// // // struct OutputArgInstantiation {
// // //   OutputArgInstantiation(string node_name, DataType data_type)
// // //       : node_name(std::move(node_name)), data_type(data_type) {}
// // //   string node_name;
// // //   DataType data_type;
// // // };
// // //
// // // // A mapping from control output name to node name in function body graph.
// // // struct ControlOutput {
// // //   string output_name;
// // //   string node_name;
// // //   bool operator<(const ControlOutput& a) const {
// // //     return output_name < a.output_name;
// // //   }
// // // };
// // //
// // // // A special case of GrapplerItem, constructed from a TensorFlow Function.
class GrapplerFunctionItem : public GrapplerItem {
  public:
// // //   GrapplerFunctionItem() = default;
// // //
// // //   const string& description() const;
// // //
// // //   const std::vector<InputArgInstantiation>& inputs() const;
// // //   const InputArgInstantiation& input(int i) const;
// // //   const std::size_t input_size() const;
// // //
// // //   const std::vector<OutputArgInstantiation>& outputs() const;
// // //   const OutputArgInstantiation& output(int i) const;
// // //   const std::size_t output_size() const;
// // //
// // //   const std::vector<ControlOutput>& control_outputs() const;
// // //   const std::size_t control_output_size() const;
// // //
// // //   const AttrSlice& func_attr() const;
// // //   const std::vector<const FunctionDef::ArgAttrs*>& arg_attr() const;
// // //   const GraphDef& function_body() const;
// // //   GraphDef& mutable_function_body();
// // //
// // //   bool is_stateful() const;
// // //
// // //   GrapplerFunctionItem& SwapFunctionBody(GraphDef&& other);
// // //
// // //  private:
// // //   friend Status MakeGrapplerFunctionItem(const FunctionDef&, const AttrSlice&,
// // //                                          const FunctionLibraryDefinition&, int,
// // //                                          GrapplerFunctionItem*);
// // //   friend Status ReplaceInputWithConst(const NodeDef&, int,
// // //                                       GrapplerFunctionItem*);
// // //   friend Status RemoveFunctionOutputs(const absl::flat_hash_set<int>&,
// // //                                       GrapplerFunctionItem*,
// // //                                       std::vector<std::pair<int, int>>*);
// // //
// // //   GrapplerFunctionItem(string func_name, string description,
// // //                        AttrSlice func_attr,
// // //                        std::vector<const FunctionDef::ArgAttrs*> arg_attr,
// // //                        std::vector<InputArgInstantiation> input_args,
// // //                        std::vector<OutputArgInstantiation> output_args,
// // //                        std::vector<ControlOutput> control_outputs,
// // //                        int graph_def_version, bool is_stateful,
// // //                        GraphDef&& function_body);
// // //
// // //   string description_;
// // //   AttrSlice func_attr_;  // Attributes specific to function definition that
// // //                          // produced this item (FuncDef.attr field).
// // //
// // //   // Attributes of function arguments
// // //   std::vector<const FunctionDef::ArgAttrs*> arg_attr_;
// // //
// // //   std::vector<InputArgInstantiation> input_args_;
// // //   std::vector<OutputArgInstantiation> output_args_;
// // //   std::vector<ControlOutput> control_outputs_;
// // //
// // //   bool is_stateful_ = false;
};
// // //
// // // // Check if function input/output types are fully defined only at instantiation
// // // // time (parametrized by its instantiation node).
// // // bool HasParametrizedType(const FunctionDef& func);
// // //
// // // // Check if a function body is parametrized by its instantiation node. Function
// // // // body is parametrized, if it has at least one node with a 'placeholder'
// // // // attribute.
// // // bool HasParametrizedBody(const FunctionDef& func);
// // //
// // // // Check if function has parametrized type or body.
// // // bool IsParametrized(const FunctionDef& func);
// // //
// // // // Resolve function instantiation type parameters from the attributes of the
// // // // caller node. Return error if type can't be resolved.
// // // Status InstantiationTypeParameters(
// // //     const FunctionDef& func, const AttrSlice& func_instantiation_attr,
// // //     absl::flat_hash_map<string, DataType>* type_parameters);
// // //
// // // // Resolve function instantiation body parameters (values for the function body
// // // // attr placeholders) from the attributes of the caller node. Return error if
// // // // type can't be resolved.
// // // Status InstantiationBodyParameters(
// // //     const FunctionDef& func, const AttrSlice& func_instantiation_attr,
// // //     absl::flat_hash_map<string, AttrValue>* body_parameters);
// // //
// // // // Replace one of the function inputs with a constant.
// // // Status ReplaceInputWithConst(const NodeDef& input_const, int input_index,
// // //                              GrapplerFunctionItem* item);
// // //
// // // // Removes outputs from instantiated grappler function item. For all active
// // // // function outputs that changed its output index, this function adds an output
// // // // mapping (std::pair<old index, new index>).
// // // Status RemoveFunctionOutputs(const absl::flat_hash_set<int>& remove_outputs,
// // //                              GrapplerFunctionItem* item,
// // //                              std::vector<std::pair<int, int>>* output_mapping);
// // //
// // // // TODO(ezhulenev, b/120103818): Add RemoveFunctionInputs.
// // //
// // // // Make a GrapplerFunctionItem from the function definition and function
// // // // instantiation attributes (caller node attributes). Returns error if the given
// // // // function def cannot be converted (e.g. not all attributes are defined).
 Status MakeGrapplerFunctionItem(const FunctionDef& func,
                                 const AttrSlice& func_instantiation_attr,
                                 const FunctionLibraryDefinition& flib,
                                 int graph_def_version,
                                 GrapplerFunctionItem* item) 
{
    const OpDef& signature = func.signature();

  /* if (signature.name().empty()) {
    return errors::InvalidArgument("Function name must be specified");
  }

  // Function types will be resolved from function instantiation attributes. All
  // other attributes will be lost during conversion to FunctionDef.
  for (const OpDef::AttrDef& attr : signature.attr()) {
    if (attr.type() != "type") {
      return errors::InvalidArgument(
          "Function signature must have only type attributes");
    }
  }

  // Instantiate function into a statically defined FunctionBody Graph.
  std::unique_ptr<FunctionBody> fbody;
  TF_RETURN_IF_ERROR(
      FunctionDefToBodyHelper(func, func_instantiation_attr, &flib, &fbody));

  GraphDef function_body;
  fbody->graph->ToGraphDef(&function_body);

  // Function body shares the library with the graph that instantiated it. We do
  // not need a full copy of the function library, just the reachable subset.
  *function_body.mutable_library() = flib.ReachableDefinitions(func).ToProto();

  VLOG(3) << absl::Substitute(
      "Deleted $0 unreachable functions from the Grappler function item "
      "instantiation of $1 (library size = $2)",
      flib.num_functions() - function_body.library().function_size(),
      signature.name(), function_body.library().function_size());

  const int num_instantiated_inputs = fbody->arg_types.size();
  const int num_instantiated_outputs = fbody->ret_types.size();
*/
  std::vector<InputArgInstantiation> inputs;
  /*
  inputs.reserve(num_instantiated_inputs);

  for (int in_id = 0; in_id < num_instantiated_inputs; ++in_id) {
    const Node* node = fbody->arg_nodes[in_id];
    const DataType& dtype = fbody->arg_types[in_id];
    inputs.emplace_back(node->name(), dtype);
  }

  std::vector<OutputArgInstantiation> outputs;
  outputs.reserve(num_instantiated_outputs);

  for (int out_id = 0; out_id < num_instantiated_outputs; ++out_id) {
    const Node* node = fbody->ret_nodes[out_id];
    const DataType& dtype = fbody->ret_types[out_id];
    outputs.emplace_back(node->name(), dtype);
  }

  // Control outputs ensure that all side-effectful nodes in the function body
  // will execute, even if they are not required to compute regular output args.
  std::vector<ControlOutput> control_outputs;
  control_outputs.reserve(func.control_ret_size());
  for (const auto& control_ret : func.control_ret()) {
    control_outputs.push_back({control_ret.first, control_ret.second});
  }
  // Sort control outputs to keep FunctionDef output stable. The sort order of
  // map entries in func.control_ret() are not stable.
  // See b/174715578 for context on why stability is desired.
  std::sort(control_outputs.begin(), control_outputs.end());
*/
  std::vector<const FunctionDef::ArgAttrs*> arg_attr(inputs.size(), nullptr);
  for (const auto& attr : func.arg_attr()) {
    arg_attr.at(attr.first) = &attr.second;
  }
/*
  *item = GrapplerFunctionItem(
      signature.name(),
      signature.description(),
      AttrSlice(&func.attr()), std::move(arg_attr),
      std::move(inputs), std::move(outputs), std::move(control_outputs),
      graph_def_version, signature.is_stateful(), std::move(function_body));
  return OkStatus(); */
  Status();

}
// // //
// // // // Make a GrapplerFunction item from the function definition. Function must be
// // // // fully defined (no type or body parametrization).
// // // // TODO(ezhulenev): Support parametrized functions without fully defined
// // // // instantiation attributes? Do we ever want to optimize parametrized function
// // // // without specializing it to its instantiation attributes (at least types)?
// // // Status MakeGrapplerFunctionItem(const FunctionDef& func,
// // //                                 const FunctionLibraryDefinition& flib,
// // //                                 int graph_def_version,
// // //                                 GrapplerFunctionItem* item);
// // //
// // // // Make a FunctionDef from the GrapplerFunctionItem. Use function library
// // // // definition to lookup function body nodes output names and ranges.
// // // Status MakeFunctionDef(const GrapplerFunctionItem& item,
// // //                        const FunctionLibraryDefinition& flib,
// // //                        FunctionDef* func);
// // //
 }  // end namespace grappler
}  // end namespace tensorflow
// // //
#endif  // TENSORFLOW_CORE_GRAPPLER_UTILS_FUNCTIONS_H_
