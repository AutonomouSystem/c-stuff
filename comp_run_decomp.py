import os
import sys

def objdump(output_file, syntax="intel"):
    """
    Disassemble a binary file
    objdump -d -M intel -d <filename>
    default: intel syntax 
    """
    ext = ".exe" if os.name == "nt" else ""
    if syntax == "intel":
         os.system(f"objdump -d -M intel  -d {output_file}{ext} > {output_file}.asm")
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

    os.system(f"gcc -Wall -o {output} {filename}")
    run_command = output
    os.system(run_command)
    objdump(output, "intel")
    print(f"Compiled and ran {filename} -> {output}.exe")

if __name__ == "__main__":
    main()
