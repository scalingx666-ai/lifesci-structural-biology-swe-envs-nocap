# Issue

**Title:** Add support for (transparently) reading binary sparseX files

## Description

Also extend default line length in xyz.c

Will need to go along with GAP submodule update

New fwrite_array_d_bin_ just there for completeness, would need to add stuff to use it to write binary files. Plan for now is to have a separate executable included in GAP to convert standard sparseX files from text to binary.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1dfd2fec15a9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.