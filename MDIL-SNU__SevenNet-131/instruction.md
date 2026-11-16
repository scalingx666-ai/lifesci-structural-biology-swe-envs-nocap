# Issue

**Title:** [Feat] add graph build test of ase and matscipy in pytest

## Description

I added **test_graph_build_ase_and_matscipy** in pytest.
This function checks the equivalence between a graph, energy, force, and stress from ASE and matscipy.

I also added Ruff settings at **pyproject.toml** for comportable use.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `629f86435460`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.