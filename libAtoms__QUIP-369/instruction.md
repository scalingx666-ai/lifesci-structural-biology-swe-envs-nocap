# Issue

**Title:** memcheck: protect reading Connection%cellsNa,b,c

## Description

While using valgrind I found this minor bug.

Alternatively or additionally the components could be preset to 0 in the type definition.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `02b65959cdce`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.