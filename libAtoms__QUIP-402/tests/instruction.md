# Issue

**Title:** test(gap_fit): sparsify only

## Description

- Add test for `sparsify_only_no_fit`
- Split check into run and check
- Update input file, check output file for Scalapack
- Refactor/cleanup

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58ef0b7cd09a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.