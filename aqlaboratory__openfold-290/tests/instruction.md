# Issue

**Title:** Add missing warmup_num_steps parameters to DeepSpeed config generation script.

## Description

`warmup_decay_num_steps` and `warmup_decay_total_num_steps` are valid user arguments but are not added to the config. This commit adds both arguments to the configuration output.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `886494ffda84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.