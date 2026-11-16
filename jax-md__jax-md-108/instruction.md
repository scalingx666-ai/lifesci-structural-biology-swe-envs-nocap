# Issue

**Title:** Introduce triplet function for three-body interactions and associated tests.

## Description

Introduce a triplet function in smap (extension of pair) that enables functions that operate on three-body interactions (two displacements or distances) to operate on an entire system.

Design decision:
1) Flexibility of parameters sharing ensures that all appropriate parameters are passed to the three body interaction term. Parameters of size 0 and 2 are passed in directly (although the latter has less physical meaning). Parameters of size 1 and 3 are assumed to be defined by the central atom and vmapped over.

2) Maintain a division by 2. after the high precision sum as most three body interaction terms will be symmetric.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `32c60cbc8b9b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.