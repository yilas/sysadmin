## Instructions

### Compiler avec musl (Alpine)

```bash
docker build -f Dockerfile.musl -t alpine_build .
docker run --rm -v $(pwd)/output:/output alpine_build
```

### Compiler avec glibc (Debian 12)

```bash
docker build -f Dockerfile.glibc -t debian_build .
docker run --rm -v $(pwd)/output:/output debian_build
```

## `ldd`

```bash
❯ ldd main-glibc
./main-glibc: /lib64/libc.so.6: version `GLIBC_2.34' not found (required by ./main-glibc)
        linux-vdso.so.1 (0x00007ffe21d2d000)
        libc.so.6 => /lib64/libc.so.6 (0x00007f63a5d19000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f63a60ef000)
```

```bash
❯ ldd main-musl
        linux-vdso.so.1 (0x00007ffe3c7fa000)
        libc.musl-x86_64.so.1 => not found
```
