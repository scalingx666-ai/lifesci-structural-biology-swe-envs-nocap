# Issue

**Title:** remove dropped attribute from molsetup.show()

## Description

The attribute `directional_vectors` has been removed from MoleculeSetup, but was still present in the `MoleculeSetup.show()` method.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5f29de0c7e8f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.