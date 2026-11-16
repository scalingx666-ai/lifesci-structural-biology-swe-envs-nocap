# Issue

**Title:** Bug fix SuCOS score

## Description

SuCOS module:
- ensure score not larger than 1
- handle molecules without features - will only use shape overlap
- add references to RDKit blog and papers for feature map-based similarity metrics

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `77433ea3a1cd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.