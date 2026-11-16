# Issue

**Title:** modify data module for fastfold train

## Description

Because we are not going to build FastFold training on PyTorch-lightning, I refactor the DataSet and DataLoader based on pure PyTorch.

And there are some differences in logic:
The new dataloader only supports batch size(bs) equal to 1, for FastFold was designed without batch dimension. Adding the batch dimension is not hard, but it takes time. Besides, the calculation almost meets the bottleneck of A100 when bs=1, so it would gain very limited speedup by increasing the bs.

For now, when bs=1, the dataloader returns tensor with shape [...] rather than [1, ...](fastfold/utils/tensor_utils.py Line 57).

When bs>1, it would raise an error.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1ae5325e421`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.