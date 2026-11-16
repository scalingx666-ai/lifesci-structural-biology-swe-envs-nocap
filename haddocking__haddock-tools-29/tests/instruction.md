# Issue

**Title:** add `renumber-model.py`

## Description

This PR adds a script to renumber a model based on a reference structure. The numbering reference is automatically detected via sequence alignment.

- Supports multiple-chains
- Does not do chain matching; expects order and name of chains in the reference to match the ones in the model

Added some documentation and example files.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d5e7bb338534`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.