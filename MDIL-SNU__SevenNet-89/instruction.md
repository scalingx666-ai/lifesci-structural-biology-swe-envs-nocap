# Issue

**Title:** Add options to access the `energy`, `force`, `stress` in ase supported format

## Description

This PR solve issue #87, and may be solve also issue #61 

Usage:
```python
sevenn_graph_build -f ase my_train_data.extxyz 5.0 --kwargs energy_key='my_energy' force_key=`my_force` stress_key=`my_stress`
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `25e4582eadbf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.