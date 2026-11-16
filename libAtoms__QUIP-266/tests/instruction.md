# Issue

**Title:** workaround for failing Docker build due to long function name

## Description

This should fix failing `quip-gap` Docker build.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `357e28d155e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.