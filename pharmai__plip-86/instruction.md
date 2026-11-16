# Issue

**Title:** Development

## Description

- updates PDB fetch URL to avoid issues with upcoming RCSB API changes (see https://data.rcsb.org/migration-guide.html#pdb-file-description)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3f6f3bfb44d2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.