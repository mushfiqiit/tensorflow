import re

def extract_includes(file_path):
    """
    Read a C/C++ file and return all include paths as a list.
    Supports both #include "x.h" and #include <x.h>.
    """
    include_pattern = re.compile(r'#include\s*[<"]([^>"]+)[>"]')
    includes = []

    with open(file_path, "r", encoding="utf-8") as f:
        for line in f:
            match = include_pattern.search(line)
            if match:
                includes.append(match.group(1))

    return includes


if __name__ == "__main__":
    file_to_read = "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/tensorflow_harness.cc"
    extract_includes(file_to_read)
