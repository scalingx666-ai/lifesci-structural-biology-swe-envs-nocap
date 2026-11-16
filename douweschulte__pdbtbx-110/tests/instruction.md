# Issue

**Title:** Fixed chain auto-capitalisation issue

## Description

#109 

Problem: Some PDB files contain two occurrences of the same chain ID, e.g., B and b. The library automatically capitalizes change IDs, this leads to a chain ID conflict which is not possible to resolve simply.

Solution: Remove the functionality which automatically capitalizes the values.

Notes: 

- This may lead to breaking changes for users who assume automatic captialisation.
- Maybe this should be handled by a feature flag or an option being passed to the PDB open function, which allows for the selection of whether to use automatic capitalisation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `793da9ca0a55`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.