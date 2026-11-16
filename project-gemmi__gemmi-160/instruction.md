# Issue

**Title:** to_mmcif: fix for empty model.name

## Description

invalid cif was written when model.name was empty

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cef9853c3b63`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.