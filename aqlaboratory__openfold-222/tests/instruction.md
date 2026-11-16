# Issue

**Title:** fp16 fixes

## Description

In AMP fp16 mode, overflow issues were observed in several places in the network.  To address this, those regions are now converted back to fp32. This change does not introduce significant performance cost which offsets the benefits of mixed precision training. We also disallow the use of memory efficient kernel (use_memory_efficient_kernel=false) in AMP fp16 mode explicitly. 

It worth mentioning the debugging tool developed at huggingface for detecting overflow issue: https://huggingface.co/docs/transformers/v4.14.1/en/debugging

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `499b9a842e9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.