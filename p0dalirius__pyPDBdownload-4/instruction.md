# Issue

**Title:** [enhancement] Keep the original directory structure in the symbols folder

## Description

I had an issue where I had `subdir1\my.dll` and `subdir2\my.dll` and the PDB last downloaded would overwrite the previous one. This also adds a nice feature where you can run `pdbdownload -d . -S .` to download the PDBs next to the EXE/DLL files

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `240d33f30147`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.