# Issue

**Title:** makefiles for Archer2 cluster

## Description

New makefiles for the Archer2 computer cluster. The notable changes are:
- the non-MPI builds are truly free of MPI linking, not even the lapack/blas modules make use of them. There are a set of instructions in the arch makefiles
- there is a base, OMP, MPI, MPI+OMP version
- this enables correct linking and execution with Castep's accelerated MD

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8b69c51bed0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.