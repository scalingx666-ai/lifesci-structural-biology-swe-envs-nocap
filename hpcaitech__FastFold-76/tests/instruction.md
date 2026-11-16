# Issue

**Title:** Fix workflow path format

## Description

os.mkdirs cannot deal with this path format. It will create ./tmp/ray/... in the current dir. Change it to linux style.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a33718b32e2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.