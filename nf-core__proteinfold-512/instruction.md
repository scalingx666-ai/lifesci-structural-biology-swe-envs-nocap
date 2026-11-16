# Issue

**Title:** Re-write accelerator closures in configs as "ifs"

## Description

Re-write accelerator closures in configs as `if`s, only returning 1 and no accelerator if `use_gpu` false

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2f459585885`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.