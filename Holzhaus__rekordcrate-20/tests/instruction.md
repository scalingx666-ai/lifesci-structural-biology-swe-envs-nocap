# Issue

**Title:** pdb.rs: Fix Table RowGroup parsing

## Description

The reference documentation contains an error which caused the
parsing to shift. This resulted in the effect that page_flags
and RowGroups could be parsed incorrectly.

see

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `462a2e66e140`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.