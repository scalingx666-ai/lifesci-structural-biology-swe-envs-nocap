# Issue

**Title:** Remove attribute MoleculeSetup.is_sidechain

## Description

`Monomer.is_movable` has superseded `MoleculeSetup.is_sidechain`.
This PR adds a test that creates a `Polymer`  from a JSON file written by v0.6.1, to guarantee backwards compatibility for future changes (the test doesn't assert anything, it only fails if there are errors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5c37f994673b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.