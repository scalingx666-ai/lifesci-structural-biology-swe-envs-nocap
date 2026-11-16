# Issue

**Title:** Bugfix/halogenbond

## Description

The hybridization of halogens was sp3d in RDKit and sp in OB. Force 1 to use 180 degrees.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `151766cdac28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.