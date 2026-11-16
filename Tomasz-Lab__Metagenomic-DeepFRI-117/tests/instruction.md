# Issue

**Title:** Build/python support

## Description

Updated dependency handling for Python 3.11-3.14.
Linux ARM wheel is not supported because of foldcomp not supporting it.
PDB100 now downloaded from mmseqs page for improved stability of access.
Added option to enable PyOpal NEON on ARM architectures for Mac.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `737e19043d5d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.