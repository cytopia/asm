# Build directory
PATH_BUILD = build

# Assembler files
NAME_ASM = print
PATH_ASM = .
SRC_ASM  = $(PATH_ASM)/$(NAME_ASM).asm
OBJ_ASM  = $(PATH_BUILD)/$(NAME_ASM).o

# Binary files
NAME_BIN = print
FILE_BIN = $(PATH_BUILD)/$(NAME_BIN)

# Compiler Flags (32bit)
NASMFLAGS = -f elf32
LDFLAGS   = -m elf_i386

.PHONY: build dbuild

# Normal build
build:
	if ! test -d $(PATH_BUILD); then mkdir $(PATH_BUILD); fi
	nasm $(NASMFLAGS) $(SRC_ASM) -o $(OBJ_ASM)
	ld $(LDFLAGS) $(OBJ_ASM) -o $(FILE_BIN)

# Debug build
dbuild:
	if ! test -d $(PATH_BUILD); then mkdir $(PATH_BUILD); fi
	nasm -g -Fdwarf $(NASMFLAGS) $(SRC_ASM) -o $(OBJ_ASM)
	ld $(LDFLAGS) $(OBJ_ASM) -o $(FILE_BIN)

clean:
	rm -f $(OBJ_ASM)
	rm -f $(FILE_BIN)
	rmdir $(PATH_BUILD)
