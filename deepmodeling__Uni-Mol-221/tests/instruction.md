# Issue

**Title:** get_flexible_torsions, keep track of the central bond.

## Description

Without `central_bond_torsions` set, we count several times the same torsion bond, and at the end flex_unique_torsions contains several representatives of the same torsion bond.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `31df6592070e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.