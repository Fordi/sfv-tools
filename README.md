# SFV Tools

A pair of simple Linux CLI tools for making / validating SFV files.

## Installation

Install SFV tools.  You have two options:

- Clone this repo and run `update-sfv-tools`

```bash
git clone https://github.com/Fordi/sfv-tools.git
cd sfv-tools
sudo ./update-sfv-tools
```

- Run the installer from github as a one-liner

```bash
wget https://raw.githubusercontent.com/Fordi/sfv-tools/refs/heads/main/update-sfv-tools -qO - | sudo bash
```

The latter will clone the repo to /opt/sfv-tools and both will symlink the commands to /usr/local/bin, so to update later:

```bash
sudo update-sfv-tools
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

