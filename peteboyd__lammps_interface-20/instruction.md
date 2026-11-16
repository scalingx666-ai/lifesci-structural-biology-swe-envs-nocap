# Issue

**Title:** fix merge conflicts of last PR

## Description

I guess there was a conflict between my last PRs that was not ideally resolved.

 * reinstates backticks in README
 * fixes travis for new way of calling `lammps-interface`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cf107f52ac08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.