import re

def process_file(input_path, output_path):
    # Regex patterns
    ifndef_pat = re.compile(r'^\s*#ifndef\b')
    define_pat = re.compile(r'^\s*#define\b')
    endif_pat  = re.compile(r'^\s*#endif\b')
    namespace_pat = re.compile(r'^\s*namespace\s+[\w:]+\s*\{$')

    in_namespace = False
    namespace_brace_depth = 0

    with open(input_path, "r") as f:
        lines = f.readlines()

    processed = []

    for line in lines:
        # Keep #ifndef / #define / #endif as-is
        if ifndef_pat.match(line) or define_pat.match(line) or endif_pat.match(line):
            processed.append(line)
            continue

        # Detect namespace declaration line (keep as-is)
        if namespace_pat.match(line):
            processed.append(line)
            in_namespace = True
            namespace_brace_depth = 1  # we've seen the opening '{' of namespace
            continue

        if in_namespace:
            open_braces = line.count('{')
            close_braces = line.count('}')

            # Compute depth *after* this line
            new_depth = namespace_brace_depth + open_braces - close_braces

            if new_depth == 0 and close_braces > 0:
                # This is the closing line of the namespace block.
                # Keep it as-is (uncommented).
                processed.append(line)
                in_namespace = False
                namespace_brace_depth = 0
            else:
                # Inside namespace, but not the final closing brace: comment the line
                processed.append("// " + line.rstrip() + "\n")
                namespace_brace_depth = new_depth

            continue

        # Outside namespace and not a kept preprocessor line: comment it out
        processed.append("// " + line.rstrip() + "\n")

    with open(output_path, "w") as f:
        f.writelines(processed)