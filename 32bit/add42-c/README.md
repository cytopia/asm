# add42-c

Defines an assembler function that can be used in C programs.
The assembler function simply adds `42` to whatever value has been parsed to it.
The C program calls this function with an argument of `5` and prints the resulting value to stdout.


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
$ ./build/add42
Result: 47
```

## Clean
```bash
make clean
```


## Credits

https://www.youtube.com/watch?v=nNdAygFyvjY
