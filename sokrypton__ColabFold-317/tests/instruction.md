# Issue

**Title:** Fixing an out-of-memory bug when splitting a very large final.a3m file

## Description

It seems like the entire final.a3m file is read into the memory. I modified the part that reads the file so that it will be read line-by-line and allow for extremely large a3m files to be splitted.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1b66cf202ce`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.