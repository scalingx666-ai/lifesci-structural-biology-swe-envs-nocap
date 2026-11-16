# Issue

**Title:** Yn update

## Description

# Update
1. Add more split methods for training. Now supports `random`, `scaffold`, `group`, `stratified`, `select`.
2. Add pre-split methods for training, using this by specifying the `split='select'`. Use `split_group_col` to manually select the split group. Column values of `split_group_col` should be range from 0 to `kfold`-1 to indicate the split group.
3. Add full volume training methods by specifying the `kfold=1`.
# Fix
1. Solve the problem that when using unimolv2 to generate conformations, it sometimes gets stuck. This is due to an incompatibility between python's own process and thread handling and the OpenMP thread acceleration used by Torch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `90ad6af9b044`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.