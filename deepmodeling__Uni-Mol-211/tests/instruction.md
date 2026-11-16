# Issue

**Title:** pad fixing for unimol and docking pose

## Description

Some pad fixing issues for unimol and docking pose. 
Note that for unimol pretraining, it does not seem to impact a lot the metrics on the small tests I made. 
However, for docking pose, you can notice that the predictions of the holo distance matrices are wrong on the diagonal, you have to replace the diagonal with 0 if you want to correct it. And indeed, the model does not see the diagonal during training because of the 0 padding.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c458c0fae231`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.