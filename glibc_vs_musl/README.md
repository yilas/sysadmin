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
