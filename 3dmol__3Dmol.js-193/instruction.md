# Issue

**Title:** Load ANISOU values from PDB file

## Description

This code extends the loading of PDB files to also load the values from the ANISOU line/field.  It loads it into the property "uMat" on the atom.  Assumes valid PDB format e.g. ATOM line occurs before ANISOU, etc.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a6f139fbe9e5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.