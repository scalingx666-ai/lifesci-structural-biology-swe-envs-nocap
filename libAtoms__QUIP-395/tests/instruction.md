# Issue

**Title:** Feat: distribute L

## Description

Generalise task manager for shared tasks, add test. Use this to evenly distribute addon matrix L among all workers.

Depends on #400 for updated test parameters.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7c7d988ef05`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.