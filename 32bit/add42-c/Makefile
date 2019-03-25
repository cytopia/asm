# Build directory
PATH_BUILD = build

# Assembler files
NAME_ASM = add42
PATH_ASM = add42
SRC_ASM  = $(PATH_ASM)/$(NAME_ASM).asm
OBJ_ASM  = $(PATH_BUILD)/$(NAME_ASM).o

# C files
FILE_C   = main

# Binary files
NAME_BIN = add42
FILE_BIN = $(PATH_BUILD)/$(NAME_BIN)

# Compiler Flags (32bit)
NASMFLAGS = -f elf32
CFLAGS    = -m32

.PHONY: build

build:
	if ! test -d $(PATH_BUILD); then mkdir $(PATH_BUILD); fi
	nasm $(NASMFLAGS) $(SRC_ASM) -o $(OBJ_ASM)
	gcc $(CFLAGS) $(OBJ_ASM) $(FILE_C).c -o $(FILE_BIN)

clean:
	rm -f $(OBJ_ASM)
	rm -f $(FILE_BIN)
	rmdir $(PATH_BUILD)
