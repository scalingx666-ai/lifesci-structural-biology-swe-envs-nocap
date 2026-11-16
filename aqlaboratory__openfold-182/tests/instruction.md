# Issue

**Title:** fix incorrect learning rate warm-up after restarting from ckpt

## Description

A simple fix to #181

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce2e1f29163e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.