#!/usr/bin/env python3
"""
Pipeline:
  1) Remove ALL existing C/C++ block comments (/* ... */)
  2) Keep:
       - #ifndef / #define / #endif header guards
       - namespace declarations and closing braces
       - class/struct definitions (outer braces kept)
  3) Replace class bodies with a single block comment
  4) Comment out everything else (inside namespaces or outside)
"""

from __future__ import annotations
import re
import sys
from pathlib import Path


# ---------- Regex patterns ----------

RE_GUARD_KEEP = re.compile(r'^\s*#\s*(ifndef|define|endif)\b')
RE_NAMESPACE_OPEN = re.compile(r'^\s*namespace\b.*\{')
RE_CLASS_OPEN = re.compile(r'^\s*(class|struct)\b')

# Matches /* ... */ across lines (non-greedy)
RE_BLOCK_COMMENT = re.compile(r'/\*.*?\*/', re.DOTALL)


# ---------- Utilities ----------

def remove_block_comments(text: str) -> str:
    """
    Completely remove all C/C++ block comments (/* ... */).
    """
    return RE_BLOCK_COMMENT.sub("", text)


def _count_braces(line: str) -> tuple[int, int]:
    return (line.count("{"), line.count("}"))


def _safe_block_comment(text: str) -> str:
    return text.replace("*/", "* /")


def _comment_line_block(line: str) -> str:
    if line.strip() == "":
        return line

    stripped = line.lstrip()
    if stripped.startswith("//"):
        return line

    nl = "\n" if line.endswith("\n") else ""
    core = line[:-1] if nl else line
    core = _safe_block_comment(core)
    return f"/*{core}*/{nl}"


# ---------- Core transformation ----------

def transform_cpp_header(src: str) -> str:
    lines = src.splitlines(keepends=True)

    out: list[str] = []
    brace_depth = 0

    namespace_stack: list[int] = []

    in_class = False
    class_depth = -1
    class_body_buf: list[str] = []

    def inside_namespace() -> bool:
        return bool(namespace_stack)

    i = 0
    while i < len(lines):
        line = lines[i]

        # Keep header guards
        if RE_GUARD_KEEP.match(line):
            out.append(line)
            opens, closes = _count_braces(line)
            brace_depth += opens - closes
            while namespace_stack and brace_depth < namespace_stack[-1]:
                namespace_stack.pop()
            i += 1
            continue

        # Collect class body
        if in_class:
            opens, closes = _count_braces(line)
            next_depth = brace_depth + opens - closes

            if next_depth < class_depth:
                if class_body_buf:
                    body = _safe_block_comment("".join(class_body_buf))
                    out.append(f"/*{body}*/\n" if not body.endswith("\n") else f"/*{body}*/")
                    class_body_buf.clear()

                out.append(line)
                brace_depth = next_depth
                in_class = False
                class_depth = -1

                while namespace_stack and brace_depth < namespace_stack[-1]:
                    namespace_stack.pop()

                i += 1
                continue
            else:
                class_body_buf.append(line)
                brace_depth = next_depth
                while namespace_stack and brace_depth < namespace_stack[-1]:
                    namespace_stack.pop()
                i += 1
                continue

        # Namespace open
        if RE_NAMESPACE_OPEN.match(line):
            out.append(line)
            opens, closes = _count_braces(line)
            brace_depth += opens - closes
            namespace_stack.append(brace_depth)
            i += 1
            continue

        opens, closes = _count_braces(line)
        next_depth = brace_depth + opens - closes
        closes_namespace = (
            namespace_stack and next_depth < namespace_stack[-1] and "}" in line
        )

        # Class open
        if RE_CLASS_OPEN.match(line):
            out.append(line)
            brace_depth = next_depth

            if "{" in line:
                in_class = True
                class_depth = brace_depth
                class_body_buf.clear()

            while namespace_stack and brace_depth < namespace_stack[-1]:
                namespace_stack.pop()

            i += 1
            continue

        # Namespace close
        if closes_namespace:
            out.append(line)
            brace_depth = next_depth
            while namespace_stack and brace_depth < namespace_stack[-1]:
                namespace_stack.pop()
            i += 1
            continue

        # Comment everything else
        out.append(_comment_line_block(line))

        brace_depth = next_depth
        while namespace_stack and brace_depth < namespace_stack[-1]:
            namespace_stack.pop()

        i += 1

    # Flush unterminated class
    if in_class and class_body_buf:
        body = _safe_block_comment("".join(class_body_buf))
        out.append(f"/*{body}*/\n" if not body.endswith("\n") else f"/*{body}*/")

    return "".join(out)


# ---------- Main ----------

def main() -> int:
    if len(sys.argv) != 3:
        print("Usage: python3 strip_tf_header.py input.h output.h", file=sys.stderr)
        return 2

    inp = Path(sys.argv[1])
    outp = Path(sys.argv[2])

    src = inp.read_text(encoding="utf-8", errors="replace")

    # NEW STEP: remove existing block comments first
    src = remove_block_comments(src)

    transformed = transform_cpp_header(src)
    outp.write_text(transformed, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
