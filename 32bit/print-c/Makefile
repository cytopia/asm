# Build directory
PATH_BUILD = build

# Assembler files
NAME_ASM = print
PATH_ASM = print
SRC_ASM  = $(PATH_ASM)/$(NAME_ASM).asm
OBJ_ASM  = $(PATH_BUILD)/$(NAME_ASM).o

# C files
FILE_C   = main

# Binary files
NAME_BIN = print
FILE_BIN = $(PATH_BUILD)/$(NAME_BIN)

# Compiler Flags (32bit)
NASMFLAGS = -f elf32
CFLAGS    = -m32

.PHONY: build dbuild

# Normal build
build:
	if ! test -d $(PATH_BUILD); then mkdir $(PATH_BUILD); fi
	nasm $(NASMFLAGS) $(SRC_ASM) -o $(OBJ_ASM)
	gcc $(CFLAGS) $(OBJ_ASM) $(FILE_C).c -o $(FILE_BIN)

# Debug build
dbuild:
	if ! test -d $(PATH_BUILD); then mkdir $(PATH_BUILD); fi
	nasm -g -Fdwarf $(NASMFLAGS) $(SRC_ASM) -o $(OBJ_ASM)
	gcc -ggdb $(CFLAGS) $(OBJ_ASM) $(FILE_C).c -o $(FILE_BIN)

clean:
	rm -f $(OBJ_ASM)
	rm -f $(FILE_BIN)
	rmdir $(PATH_BUILD)
