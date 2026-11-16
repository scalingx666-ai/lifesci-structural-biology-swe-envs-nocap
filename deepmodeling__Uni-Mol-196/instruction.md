# Issue

**Title:** Disable batch shuffling. Only per sample

## Description

Currently batch size will affect the order of samples, therefore can't adjust the effective batch_size (`num_gpus * batch_size * update_freq`) and keep the same results. 

See for context:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d4d5590ce45b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.