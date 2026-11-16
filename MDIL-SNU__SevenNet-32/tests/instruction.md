# Issue

**Title:** fix: sevennet calculator related

## Description

1. sevennet calculator  tries to read cutoff from typemap if it is not present
2. sevennet calculator tries to read checkpoint from env var
3. circular import in util.py
4. sevennet calculator small test  added to testbot

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `091a4ebf6515`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.