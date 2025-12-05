.PHONY: all clean

CC = gcc
CFLAGS = -m32 -c
AS = nasm
ASFLAGS = -f elf -i src/

all: task1 task1_2 task2_loop task2_array

task1: src/task1.o src/asm_io.o src/driver.o
	$(CC) -m32 src/driver.o src/task1.o src/asm_io.o -o task1

task1_2: src/task1_2.o src/asm_io.o src/driver.o
	$(CC) -m32 src/driver.o src/task1_2.o src/asm_io.o -o task1_2

task2_loop: src/task2_loop.o src/asm_io.o src/driver.o
	$(CC) -m32 src/driver.o src/task2_loop.o src/asm_io.o -o task2_loop

task2_array: src/task2_array.o src/asm_io.o src/driver.o
	$(CC) -m32 src/driver.o src/task2_array.o src/asm_io.o -o task2_array

src/%.o: src/%.asm
	$(AS) $(ASFLAGS) $< -o $@

src/%.o: src/%.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f src/*.o task1 task1_2 task2_loop task2_array
