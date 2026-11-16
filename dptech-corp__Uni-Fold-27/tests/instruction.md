# Issue

**Title:** optimize the consumption of memory in inference with chunked setting

## Description

1 add the inplace-style residual modules for inference
2 change the order of layer_norm_in while chunked inference
3 add the chunk2d style inference forward for /triangle_multiplication

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a12e3cab1818`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.