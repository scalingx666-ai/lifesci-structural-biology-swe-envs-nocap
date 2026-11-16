# Issue

**Title:** Feature/autoregressive baseline

## Description

Autoregressive baseline, which has a huge failure mode of generating alpha helices endlessly and nothing else.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3714a328a8ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.