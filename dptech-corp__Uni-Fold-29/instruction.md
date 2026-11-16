# Issue

**Title:** Fix some minor bugs

## Description

1, correct the denominator of average memory in benchmark
2, fix the tri_mul_in/out in template when chunked inference

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a731d3df918b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.