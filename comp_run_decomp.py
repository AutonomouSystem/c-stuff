import os
import re
import sys
import subprocess

def objdump(output_file, syntax="intel"):
    """
    Disassemble a binary file
    objdump -d -M intel <filename>
    default: Intel <inst> <src>, <dest>
    alternate: AT&T <inst> <dest>, <src>
    """
    ext = ".exe" if os.name == "nt" else ""
    if syntax == "intel":
        os.system(f"objdump -d -M intel {output_file}{ext} > {output_file}.asm")
        print(f"objdump {output_file}.asm")
    else:
        os.system(f"objdump -d {output_file}{ext} > {output_file}.asm")
        print(f"objdump {output_file}.asm")

def find_main(output_file):
    """
    TO-DO: Find the main function in the disassembled file
    """
    with open(f"{output_file}.asm", "r") as f:
        lines = f.readlines()
        for line in lines:
            if "main" in line:
                print(line)

def find_syscalls(output_file):
    """
    TO-DO: Find the syscalls in the disassembled file
    """
    with open(f"{output_file}.asm", "r") as f:
        lines = f.readlines()
        for line in lines:
            if "syscall" in line:
                print(line)

def find_strings(output_file):
    """
    TO-DO: Find the strings in the disassembled file
    """
    with open(f"{output_file}.asm", "r") as f:
        lines = f.readlines()
        for line in lines:
            if ".string" in line:
                print(line)

def find_functions_in_c(input_file):
    """
    TO-DO: Find the functions in the C file
    """
    pattern = r"(?:int|void|float|char|bool|long|double|short|unsigned|long\s+long|size_t|struct\s+\w+|enum\s+\w+|[A-Za-z_]\w*|const\s+(?:int|char|float|double)|(?:int|char|float|double|void)\s*\*)\s+(\w+)\s*\("
    pass

def find_functions_in_asm(output_file):
    """
    TO-DO: Find the functions in the assembly file
    """
    pass


def compile_and_run(filename):
    """
    Compile the C file and run the compiled executable
    """
    output = filename.replace(".c", "")
    try:
        compile_output = subprocess.check_output(
            f"gcc -Wall -o {output} {filename}",
            stderr=subprocess.STDOUT,
            shell=True,
            universal_newlines=True
        )
        print("Compilation output:")
        print(compile_output)

        run_command = output
        run_output = subprocess.check_output(
            run_command,
            stderr=subprocess.STDOUT,
            shell=True,
            universal_newlines=True
        )
        print("Program output:")
        print(run_output)

        objdump(output, "intel")
        print(f"Compiled and ran {filename} -> {output}.exe")
    except subprocess.CalledProcessError as e:
        print("Compilation error:")
        print(e.output)
        sys.exit(1)

def main():
    """
    Compile my C, run afterwards
    gcc -o <output> <filename.c> && ./<output>
    """
    if len(sys.argv) < 2:
        print("Usage: python compile.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]
    if not filename.endswith(".c"):
        print("Invalid file extension. Please provide a C file.")
        sys.exit(1)

    compile_and_run(filename)

if __name__ == "__main__":
    main()
