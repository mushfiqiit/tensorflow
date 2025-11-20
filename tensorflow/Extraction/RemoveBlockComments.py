import re

def remove_block_comments(infile_path, outfile_path):
    """
    Remove all C-style block comments (/* ... */) from a C source file.

    Args:
        infile_path (str): path to input .c file
        outfile_path (str): path to write cleaned output file
    """
    with open(infile_path, "r", encoding="utf-8") as f:
        code = f.read()

    # Regex removes anything between /* and */
    cleaned = re.sub(r"/\*.*?\*/", "", code, flags=re.DOTALL)

    with open(outfile_path, "w", encoding="utf-8") as f:
        f.write(cleaned)
