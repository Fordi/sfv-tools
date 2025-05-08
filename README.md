# SFV Tools

A pair of simple tools for making / validating SFV files.

## make-sfv

```bash
make-sfv {glob} > {target.sfv}
```

Outputs an SFV file, given a file glob, e.g., 

```bash
make-sfv data-*.json > data.sfv
```

## check-sfv

```bash
check-sfv {sfv file}
```

Check that the files referenced by an SFV have matching checksums, e.g., 

```bash
check-sfv data.sfv
```

## install.sh

Installs SFV tools to the executables directory of your choice, e.g.,

```bash
./install.sh ~/bin
```
