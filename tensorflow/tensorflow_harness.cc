#include "tensorflow/core/grappler/utils/functions.h"
#include "tensorflow/core/grappler/utils/functiondef_stub.h"
#include "tensorflow/core/framework/node_def_util.h"

int main() {
    tensorflow::FunctionDef fd;
    tensorflow::AttrSlice attrslice;
    tensorflow::FunctionLibraryDefinition funclibdef;
    int graph_def_version;
    tensorflow::grappler:: GrapplerFunctionItem* item;
    MakeGrapplerFunctionItem(fd, attrslice, funclibdef, graph_def_version, item);
}