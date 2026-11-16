# Issue

**Title:** restrain_ligand.py handling 2-letter residue names

## Description

Previously, restrain_ligand.py would only accept ZN or other ions if the residue name was given as ' ZN'. This is unintuitive and results in ugly output filenames that contain spaces. It would make more sense to strip whitespace when searching for residues. This means I can provide "ZN" as the residue name without encountering an error that the residue does not exist. This remains backwards-compatible, in that you can still provide " ZN" as the argument and the same output filename as before will be generated, in case some users have already scripted around this problem.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3b3c22d6829b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.