# Issue

**Title:** Refactor and fix MolecularContainer.get_pi()

## Description

- Add test for pI (isoelectric point)
- Use bisection instead of grid search in `MolecularContainer.get_pi()`, which is much faster (probably about 10x)
- Also, the grid search did not produce the expected results for one of my input files. The "iteration" part of the grid search was apparently not entered and produced pI to a single digit precision only (9.0 instead of 8.65).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ab80128c4583`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.