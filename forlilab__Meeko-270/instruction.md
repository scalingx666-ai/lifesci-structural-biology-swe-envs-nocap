# Issue

**Title:** don't max out substructure matches at 1000

## Description

Unreasonably large ligands will have untyped atoms without this.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06f61eb1ec8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.