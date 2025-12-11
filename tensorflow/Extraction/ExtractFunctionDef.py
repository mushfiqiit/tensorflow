from ExperimentCodellama import send_class_to_ollama

def extract_functiondef_class(file_path):
    """
    Extract the full definition of:
      class PROTOBUF_EXPORT FunctionDef final : public ::google::protobuf::Message
    from the given file and return it as a string.
    """

    class_decl = 'class PROTOBUF_EXPORT FunctionDef final : public ::google::protobuf::Message'

    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Find the start of the class declaration
    start_idx = content.find(class_decl)
    if start_idx == -1:
        raise ValueError("Class declaration not found in file.")

    # From the class declaration, find the first '{'
    brace_start = content.find("{", start_idx)
    if brace_start == -1:
        raise ValueError("Opening '{' for class not found after declaration.")

    # Now scan forward and match braces to find the end of the class body
    brace_count = 0
    end_idx = None

    for i in range(brace_start, len(content)):
        ch = content[i]
        if ch == '{':
            brace_count += 1
        elif ch == '}':
            brace_count -= 1
            if brace_count == 0:
                end_idx = i
                break

    if end_idx is None:
        raise ValueError("Matching closing '}' for class not found.")

    # Include a possible trailing semicolon after the closing brace
    j = end_idx + 1
    while j < len(content) and content[j].isspace():
        j += 1
    if j < len(content) and content[j] == ';':
        end_idx = j

    class_definition = content[start_idx:end_idx + 1]
    return class_definition


if __name__ == "__main__":
    path = "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/grappler/utils/function.pb.h"  # adjust as needed
    cls = extract_functiondef_class(path)
    send_class_to_ollama(cls)
    result = send_class_to_ollama(cls)

    output_path = "functiondef_stub.h"   # choose your filename

    with open(output_path, "w", encoding="utf-8") as f:
        f.write(result)

    print(f"Output written to: {output_path}")
    print(result)
