# Issue

**Title:** Add option to parallelise GAP over descriptors, not atoms

## Description

This strategy seems to significantly improve the scaling for certain descriptors, such as general dimer, where the number of descriptors is much larger than the number of atoms.

Changes will be merged once I verify the correctness of the new parallelised GAP.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `05abe8ee5637`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.