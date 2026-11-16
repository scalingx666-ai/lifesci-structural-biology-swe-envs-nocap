# Issue

**Title:** add Apple Silicon support

## Description

Adds support for Apple Silicon GPUs in these scripts - I have tested it out on a Mac M1 Pro chip and it works well, should work generally.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb94e5ed3afc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.