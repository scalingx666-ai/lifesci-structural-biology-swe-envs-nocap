# Issue

**Title:** Make sure that `resnum` and `resid` in atom_dict are correct

## Description

Fix `resid` vs `resnum` discrepancy due to #73

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4513624e4732`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.