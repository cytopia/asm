# add42-asm

Assembler program that pushes `5` to the stack as an argument for `add42`, which
in turn adds `42` to the stack's value (`42 + 5`) and returns this as the program's exit code: `47`.


## Requirements

```bash
sudo apt-get install nasm make
```

## Build
```bash
# This
make

# Or this
make build
```

## Run
```bash
$ ./build/add42
$ echo $?
47
```

## Clean
```bash
make clean
```


## Credits

https://www.youtube.com/watch?v=nNdAygFyvjY
