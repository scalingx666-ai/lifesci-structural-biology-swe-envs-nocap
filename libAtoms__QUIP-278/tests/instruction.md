# Issue

**Title:** Fixed syntax error in dynamicalsystem.py

## Description

Initialising a Dynamics object on Atoms with no initial momenta triggers the line:

atoms.set_momenta(np.zeros(len(atoms), 3))

which gives

TypeError: Cannot interpret '3' as a data type.

Fix: wrap len(atoms),3 in a tuple:
atoms.set_momenta(np.zeros((len(atoms), 3)))

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d467b6c928ae`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.