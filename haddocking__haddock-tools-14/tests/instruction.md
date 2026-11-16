# Issue

**Title:** [DONE] Add a script to calculate passive residues from active residues

## Description

- Needs freesasa and biopython (both installable with pip)
- As default, accessibility cutoff to 15% to get surface residues & distance cutoff to 6.5A (webserver default setup)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a6bc83e7db0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.