# Issue

**Title:** patch single-atom configuration error when flashTP used

## Description

fixed:
- single atom energy inference using LAMMPS-Torch, `pair_e3gnn.cpp` and `pair_e3gnn_parallel.cpp`
- no-edge system inference using flashTP (ASE, LAMMPS-Torch)
- no-edge system inference using LAMMPS-MLIAP

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e10770c407c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.