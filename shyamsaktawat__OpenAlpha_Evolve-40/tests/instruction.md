# Issue

**Title:** make sure average runtime latency is a float value

## Description

I found that sometimes returned average_runtime_ms is not a number.
Add this check to make sure it's sort-able

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `25980f23cbf4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.