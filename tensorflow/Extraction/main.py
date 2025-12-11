from RemoveBlockComments import remove_block_comments
from ReadIncludes import extract_includes
from ProcessFile import process_file

BASEDIR="/home/mushfiqur/Desktop/Github/tensorflow/"

def main():
    file_to_read = "/home/mushfiqur/Desktop/Github/tensorflow/tensorflow/core/framework/function.h"
    files=extract_includes(file_to_read)

    for file in files:
        print(file)

    input_file = files[0]
    output_file = files[0]

    input_file=BASEDIR+input_file
    output_file=BASEDIR+output_file

    # Call the method from RemoveBlockComments.py
    remove_block_comments(input_file, output_file)

    #print(f"Block comments removed. Clean file saved to: {output_file}")
    #process_file(input_file, output_file)

    print("Processing complete. Output written to:", output_file)

if __name__ == "__main__":
    main()
