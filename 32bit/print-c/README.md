# print-c

Defines the `print` assembler function that can be used in C programs. The assembler function is able to print a string to stdout by taking the char* and length as arguments.


## Requirements

```bash
sudo apt-get install gcc-multilib nasm make
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
$ ./build/print
Hi world
$ echo $?
0
```

## Clean
```bash
make clean
```


## Credits

https://asmtutor.com/#lesson2
