# Issue

**Title:** Paralellize BVP solver initialization

## Description

DPPoisson and DPStokes make use of the BVP solver, which requires inverting a series of matrices at initialization. When the system is large in the aperiodic direction, this becomes really inefficient.

Currently, LAPACK is used to invert these matrices, which (annoyingly and uncontrollably) parallelizes each inversion. This is inefficient when there is already an embarrassingly parallel way to distribute the load, which is inverting (sequentially) a matrix per thread. Doing this results in a large (x10-100) speedup in DPStokes ad DPPoisson initialization.

This PR implements this change by introducing the following (backward compatible) changes:
- Allows Eigen3 to be used to invert the matrices. A new CMake option, USE_EIGEN, has been introduced to control this (defaults to OFF).
- Parallelizes the loop that inverts matrices using thrust parallel std algorithms via OpenMP. A new CMake option, USE_OPENMP, has been introduced to control this behavior. This option defaults to ON

I also solved some compilation warnings and updated the documentation regarding the build system.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0c09eeb49ea2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.