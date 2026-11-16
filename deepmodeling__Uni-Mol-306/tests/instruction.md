# Issue

**Title:** Yn update

## Description

# Update
1. unimolv2 feature calculated using numpy.ndarray instead of torch.tensor.()
2. conformer details for UnimolV1.()
3. Windows platforms no longer use multiprocessing by default.()

# Fix
1. Exception when using unimolv2 with atoms count >128.()

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3669afc3dd1b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.