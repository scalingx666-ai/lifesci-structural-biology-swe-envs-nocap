# Issue

**Title:** Fix NaN loss bug + add development env for Nvidians

## Description

* center protein coords at zero to avoid NaN loss with FP16 training
* docker image with dependencies needed for training
* callback for measuring performance (copy-pasted from our nnUNet repo)
* minor change to arg parsing (it's needed because `argparse` uses `type` like a callable and `bool('False')` evaluates to `True`)
* don't try to use DDP for single gpu training (allows for tests without DeepSpeed)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56f0a8a03863`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.