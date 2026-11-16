# Issue

**Title:** Add intercentroid distance

## Description

RMSD:
- Report distance between centroids of predicted molecule and ground truth molecule. Useful as a complimentary metric because flipped molecules might have a large RMSD but a small centroid distance.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `778156e8df01`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.