# Issue

**Title:** Fix compilation with GCC 13

## Description

cstdint has to be included explicitly, see:

https://gcc.gnu.org/gcc-13/porting_to.html

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e9bccc8ead3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.