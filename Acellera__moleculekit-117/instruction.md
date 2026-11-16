# Issue

**Title:** Align to best match in OPM

## Description

Performs sequence alignment to all proteins in the OPM to find the best match and then uses TM-Align to align the structures on the sequence-matching residues.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `48cd78641e60`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.