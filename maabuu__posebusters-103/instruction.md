# Issue

**Title:** Update tooling

## Description

- Update workflow action versions
- Replace `N1C=CCC=C1` with `C1CCCCC1` in non-flatness tests
- Disable enforcing chirality for exotic energy ratio check text example

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a5f26aa7270`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.