# Issue

**Title:** Make writing CRYST1 record optional

## Description

Allow app developers to decide whether or not the CRYST1 record is written to pdb

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `42ed13f6c3ba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.