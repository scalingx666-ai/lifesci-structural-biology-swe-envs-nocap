# Issue

**Title:** Regions Feature

## Description

Implements a new feature "--regions" by which interactions can be detected between defined protein regions. 

Protein regions can be specified as ligand/receptor groups by chain and residue numbers, e.g., ({A: 1-20, 25, 26, 28}, {A: 54-63, B: 17-46}) to define residues 1-20, 25, 26, and 28 of chain A as ligand and residues 54-63 of chain A and residues 17-46 of chain B as receptor. Defining a receptor is optional. Multiple ligand-receptor pairs can be parsed as a list of tuples [({A: 1-20}, {B: 17-46}), ({C: 5-43}, {D: 7})].

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `86cccd5a9743`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.