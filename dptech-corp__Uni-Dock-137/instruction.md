# Issue

**Title:** Optimize CUDA codes in `precalculate.cu`

## Description

Use constant memory instead of global memory to store two frequently accessed lists. This significantly accelerates the "precalculate" process.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e98f756bb767`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.