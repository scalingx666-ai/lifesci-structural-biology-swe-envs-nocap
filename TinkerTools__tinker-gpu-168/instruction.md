# Issue

**Title:** Softcore LJ

## Description

This pull request adds:
- Softcore in the LJ kernels (OpenACC and CUDA)
- Softcore in the special 1-4 LJ kernels (OpenACC and CUDA)
- Separate code paths for the combined LJ+PartialCharge when mutants are used.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4460318af567`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.