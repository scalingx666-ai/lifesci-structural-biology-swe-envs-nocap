# Issue

**Title:** Makefile for Avon cluster at Warwick

## Description

As discussed with @jameskermode  - Makefile for the Avon cluster at Warwick.

Uses full Intel stack, i.e. icc/ifort + Intel MPI and MKL. Existing Makefiles for Intel compilers seem to assume Intel compilers with OpenMPI, i.e. they use the (deprecated) wrappers mpif90 and mpicc. With recent Intel MPI those wrappers compile with gcc/gfortran and link against Intel MPI which likely isn't what users are wanting on Avon.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `08f464fe7e33`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.