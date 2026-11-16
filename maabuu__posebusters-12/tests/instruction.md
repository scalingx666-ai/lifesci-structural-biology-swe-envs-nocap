# Issue

**Title:** Allow passing mol object

## Description

CLI:
- `bust` method now also accepts a single path or a single RDKit molecule object. 
- Bug fix for #11 

Energy ratio check:
- Instead of raising an error, check runs and returns NA for molecule objects that do not contain a conformation.

Distance geometry check:
- Instead of raising an error, check runs and returns NA for molecule objects that do not contain a conformation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1b265d30d44c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.