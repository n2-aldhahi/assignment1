# Worksheet 1 - An Echo of Assembler

This assignment demonstrates x86 assembly programming with NASM.

## Tasks Completed

### Task 1: Basic Assembly Programs

#### Task 1.1: Adding Two Numbers
- Adds two integers stored in global memory
- Outputs the result using print_int function
- **File:** `src/task1.asm`
- **Run:** `./task1`

#### Task 1.2: Hello World in Assembly
- Displays a string message from assembly
- **File:** `src/task1_2.asm`
- **Run:** `./task1_2`

### Task 2: Loops and Conditionals

#### Task 2.1: Welcome Message Loop
- Asks user for their name
- Asks for a count (must be between 50-100)
- Prints welcome message with name that many times
- Validates input range
- **File:** `src/task2_loop.asm`
- **Run:** `./task2_loop`

#### Task 2.2: Array Sum
- Initializes an array of 100 elements with values 1-100
- Calculates and displays the sum
- **File:** `src/task2_array.asm`
- **Run:** `./task2_array`

### Task 3: Makefile
A comprehensive Makefile is provided to build all programs.

**Features:**
- Builds all tasks with a single command
- Handles assembly and C file compilation
- Supports clean target to remove built files

## How to Build

```bash
# Build all programs
make

# Build specific program
make task1
make task1_2
make task2_loop
make task2_array

# Clean built files
make clean
```

## How to Run

```bash
./task1              # Basic addition
./task1_2            # Hello world
./task2_loop         # Welcome message loop (interactive)
./task2_array        # Array sum calculation
```

## Note

This implementation requires:
- `asm_io.inc` and `asm_io.asm` files (assembly I/O library)
- 32-bit compilation support (gcc -m32)
- NASM assembler

For systems without asm_io library, mock implementations are needed.
