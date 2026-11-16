# Issue

**Title:** Docker

## Description

Adds a Dockerfile, docker build and usage instructions.

I had difficulty compiling this and its dependencies on a Debian 10 system (old CMake, gcc, etc).

Build the image yourself: 

```bash
docker build -t dssp .
```

Or pull from Docker Hub:

```bash
docker pull stephenturner/dssp && docker tag stephenturner/dssp dssp
```

Usage:

```bash
docker run --rm dssp
```

```
Usage: mkdssp [options] input-file [output-file]
  --output-format arg        Output format, can be either 'dssp' for classic 
                             DSSP or 'mmcif' for annotated mmCIF. The default 
                             is chosen based on the extension of the output 
                             file, if any.
  --min-pp-stretch arg (=3)  Minimal number of residues having PSI/PHI in range 
                             for a PP helix, default is 3
  --write-other              If set, write the type OTHER for loops, default is 
                             to leave this out
  --no-dssp-categories       If set, will suppress output of new DSSP output in 
                             mmCIF format
  --calculate-accessibility  Default is to not calculate the surface 
                             accessibility when the output format is mmCIF
  --mmcif-dictionary arg     Path to the mmcif_pdbx.dic file to use instead of 
                             default
  -h [ --help ]              Display help message
  --version                  Print version
  -v [ --verbose ]           verbose output
  --quiet                    Reduce verbose output to a minimum
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `49306a57098f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.