# Issue

**Title:** Return context manager from open_file_for_reading

## Description

Ensures that file handles will be closed.

Alternative to 

/cc @stefdoerr

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `68007f065c54`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.