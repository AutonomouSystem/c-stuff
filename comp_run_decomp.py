import os
import sys
import subprocess

def objdump(output_file, syntax="intel"):
    """
    Disassemble a binary file
    objdump -d -M intel <filename>
    default: intel syntax
    """
    ext = ".exe" if os.name == "nt" else ""
    if syntax == "intel":
        os.system(f"objdump -d -M intel {output_file}{ext} > {output_file}.asm")
        print(f"objdump {output_file}.asm")
    else:
        os.system(f"objdump -d {output_file}{ext} > {output_file}.asm")
        print(f"objdump {output_file}.asm")

def main():
    """
    Compile my C, run afterwards
    gcc -Wall -o <output> <filename.c> && ./<output>
    """
    if len(sys.argv) < 2:
        print("Usage: python compile.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]
    if not filename.endswith(".c"):
        print("Invalid file extension. Please provide a C file.")
        sys.exit(1)

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

if __name__ == "__main__":
    main()
