# Issue

**Title:** bugfix dihedrals overcounted by non-canonicalized atom indices

## Description

The fix canonicalizes atom indices defining dihedral paths making it impossible for the same set of four atoms `(a, b, c, d)` and `(d, c, b, a)` to define two dihedral potentials.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5a73d068d8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.