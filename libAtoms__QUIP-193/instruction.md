# Issue

**Title:** Added ${CP_OPTS} to fix compilation on CSD3

## Description

Needed to change `-p` to `${CP_OPTS}` in some of the files of fox because the CSD3 machine doesn't support the -p option of the cp command. The `${CP_OPTS}` is set in `arch/Makefile.csd3_x86_64_gfortran_openmp`

Also needs the pull request in libatoms/fox:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6df2fdaf68c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.