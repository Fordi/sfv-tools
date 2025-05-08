# SFV Tools

A pair of simple Linux CLI tools for making / validating SFV files.

## Installation

Install SFV tools.

```bash
wget https://fordi.github.io/update-repo/update-repo.sh -qO - | bash /dev/stdin install Fordi/sfv-tools
```

This will install [update-repo](https://github.com/Fordi/update-repo), clone the repo to ~/.repos/sfv-tools, and symlink the commands in `./bin` to your personal executables folder, so to update later:

```bash
update-repo u Fordi/sfv-tools
```

## make-sfv

```bash
make-sfv {glob} > {target.sfv}
```

Outputs an SFV file, given a file glob, e.g., 

```bash
make-sfv data-*.json > data.sfv
```

#### data.sfv
```text
; Generated at 2025-05-08T11:55:23-0400 by fordi with make-sfv (compatible; by https://github.com/Fordi)
;
data-1.json eafde7a2
data-2.json d9a2b42f
data-3.json b5713e54
data-4.json ea795b75
data-5.json 2d08a8e4
```

## check-sfv

```bash
check-sfv {sfv file}
```

Check that the files referenced by an SFV have matching checksums, e.g., 

```bash
check-sfv data.sfv
```

```text
data.sfv OK!
```

