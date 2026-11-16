# Issue

**Title:** Parsing of unit cell vectors in XYZ files

## Description

Added parsing of the Lattice parameter in extended XYZ files. This parameter contains the unit cell vectors. 
For parsing used regexp from the [ASE library](https://gitlab.com/ase/ase/-/blob/0683eaf282888448427f0951b341bbd1416807a5/ase/io/extxyz.py#L40).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e611be47dc78`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.