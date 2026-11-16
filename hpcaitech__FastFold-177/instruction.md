# Issue

**Title:** [hotfix] fix perf for api changing

## Description

`benchmark/perf.py` has been outdated for the API changing.
Now it is fixed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `05681304651b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.