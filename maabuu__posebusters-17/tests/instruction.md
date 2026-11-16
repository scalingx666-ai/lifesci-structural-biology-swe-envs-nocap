# Issue

**Title:** Bug fix for EM

## Description

Internal energy test:
- Add check for InChI validity right after it is created. Some molecules that pass RDKit's sanitization checks yield invalid InChi strings and cause errors later on.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf53d29edcac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.