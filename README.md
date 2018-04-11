## Usage

```shell
docker run --rm -it --security-opt seccomp:unconfined -v "$(pwd):/data" tevin/lab.debian
```

### Explaination:
- `--security-opt seccomp:unconfined` is for `gdb` to work properly
- `ENTRYPOINT` is `/bin/bash`
- `WORKDIR` is `/data`

## Features

### Library
- glibc

### Building
- gcc
- make

### Debugging
- gdb
- valgrind

### Utility
- sed
- grep

### Shell
- bash
