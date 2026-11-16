# Issue

**Title:** Add nf-test for the modes that are missing them

## Description

nf-test implemented for:

- rosettafold-aa
- rosettafold2na
- helixfold3
- boltz

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `20f04da38c00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.