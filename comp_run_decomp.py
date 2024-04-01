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
    Usage: find_functions_in_c(input_file.c)
    """
    functions = []
    pattern = r"(?:int|void|float|char|bool|long|double|short|unsigned|long\s+long|size_t|struct\s+\w+|enum\s+\w+|[A-Za-z_]\w*|const\s+(?:int|char|float|double)|(?:int|char|float|double|void)\s*\*)\s+(\w+)\("
    with open(input_file, "r") as f:
        content = f.read()
        matches = re.findall(pattern, content)
        for match in matches:
            functions.append(match)
    return functions

def find_functions_in_asm(input_file, functions):
    """
    Find the corresponding functions in the ASM file
    Usage find_functions_in_asm(inputfile.asm, functions_list)
    """
    asm_functions = {}
    with open(input_file, "r") as f:
        content = f.read()
        for function in functions:
            pattern = r"<" + re.escape(function) + r">:\n(.*?)\n\n"
            match = re.search(pattern, content, re.DOTALL)
            if match:
                asm_code = match.group(1).strip().split("\n")
                asm_functions[function] = asm_code
    return asm_functions

def compare_c_and_asm(c_code, asm_code, verbosity):
    c_lines = c_code.strip().split('\n')
    asm_lines = [line.strip() for line in asm_code]

    instruction_lookup = {
    'push': "Push register onto the stack",
    'pop': "Pop register from the stack",
    'mov': "Move value to register",
    'sub': "Subtract value from register",
    'add': "Add value to register",
    'lea': "Load effective address into register",
    'call': "Call a function",
    'ret': "Return from the function",
    'nop': "No operation (padding)",
    'jmp': "Unconditional jump",
    'je': "Jump if equal",
    'jne': "Jump if not equal",
    'jz': "Jump if zero",
    'jnz': "Jump if not zero",
    'jg': "Jump if greater",
    'jge': "Jump if greater or equal",
    'jl': "Jump if less",
    'jle': "Jump if less or equal",
    'cmp': "Compare operands",
    'test': "Perform bitwise AND on operands",
    'xor': "Perform bitwise XOR on operands",
    'and': "Perform bitwise AND on operands",
    'or': "Perform bitwise OR on operands",
    'not': "Perform bitwise NOT on operand",
    'neg': "Negate the value of operand",
    'inc': "Increment operand by 1",
    'dec': "Decrement operand by 1",
    'shl': "Shift operand left",
    'shr': "Shift operand right",
    'sar': "Shift operand right with sign extension",
    'mul': "Multiply operands",
    'div': "Divide operands",
    'imul': "Signed multiplication",
    'idiv': "Signed division",
    'push': "Push operand onto the stack",
    'pop': "Pop operand from the stack",
    'pushf': "Push EFLAGS register onto the stack",
    'popf': "Pop EFLAGS register from the stack",
    'pusha': "Push all general-purpose registers onto the stack",
    'popa': "Pop all general-purpose registers from the stack",
    'pushal': "Push all general-purpose registers onto the stack (32-bit)",
    'popal': "Pop all general-purpose registers from the stack (32-bit)",
    'pushad': "Push all general-purpose registers onto the stack (64-bit)",
    'popad': "Pop all general-purpose registers from the stack (64-bit)",
    'movzx': "Move with zero extension",
    'movsx': "Move with sign extension",
    'cmovz': "Conditional move if zero",
    'cmovnz': "Conditional move if not zero",
    'cmova': "Conditional move if above",
    'cmovb': "Conditional move if below",
    'cmovae': "Conditional move if above or equal",
    'cmovbe': "Conditional move if below or equal"
}

    print("C Code".ljust(40) + "Assembly Code".ljust(60) + "Description")
    print("-" * 120)

    asm_index = 0
    for c_line in c_lines:
        if verbosity == "less" and not c_line.startswith(('void', 'int', 'bool', 'char', 'float', 'double')):
            continue

        print(c_line.ljust(40), end='')

        if asm_index < len(asm_lines):
            asm_line = asm_lines[asm_index]
            if ':' in asm_line:
                parts = asm_line.split(':')
                address = parts[0].strip()
                instructions = ':'.join(parts[1:]).strip()
                print(f"{address}: {instructions}".ljust(60), end='')
            else:
                print(asm_line.ljust(60), end='')

            instruction = asm_line.split(None, 1)[0].strip()
            description = instruction_lookup.get(instruction, "")
            print(description.ljust(40))

            asm_index += 1
        else:
            print("")

def compare_functions(c_file, asm_file, verbosity="less"):
    with open(c_file, "r") as file:
        c_code = file.read()

    with open(asm_file, "r") as file:
        asm_code = file.read()

    asm_functions = {}
    for match in re.finditer(r"<(\w+)>:\n(.*?)\n\n", asm_code, re.DOTALL):
        function_name = match.group(1)
        asm_function_code = match.group(2).strip().split("\n")
        asm_functions[function_name] = asm_function_code

    for function_name, asm_code in asm_functions.items():
        c_function = find_function_in_c(function_name, c_code)
        if verbosity == "more" or (verbosity == "less" and c_function):
            print(f"Function: {function_name}")
            print("-" * 40)
            compare_c_and_asm(c_function, asm_code, verbosity)
            print("\n")


def find_function_in_c(function_name, c_code):
    pattern = re.compile(rf"(?s)(\w+\s+{function_name}\s*\(.*?\)\s*\{{.*?\}})")
    match = pattern.search(c_code)
    if match:
        return match.group(1)
    return ""


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
    gcc -Wall -o <output> <filename.c> && ./<output>
    """
    if len(sys.argv) < 2:
        print("Usage: python compile.py <filename.c>")
        sys.exit(1)

    filename = sys.argv[1]
    if not filename.endswith(".c"):
        print("Invalid file extension. Please provide a C file.")
        sys.exit(1)

    compile_and_run(filename)

if __name__ == "__main__":
    # $ cat output.txt | grep "Function: test" -A 100
    main()
    functions = find_functions_in_c(sys.argv[1])
    asm_functions = find_functions_in_asm(f"{sys.argv[1].replace('.c', '')}.asm", functions)
    compare_functions(sys.argv[1], f"{sys.argv[1].replace('.c', '')}.asm", verbosity="more")
    
