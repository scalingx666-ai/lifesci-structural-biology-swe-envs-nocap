# Issue

**Title:** Makefiles for Sulis

## Description

As suggested by @jameskermode, suitable Makefiles for Sulis. Should work for any system with a GCC+OpenMPI+OpenBLAS software stack managed by EasyBuild.

Most of the problems we've encountered with people trying to build QUIP on Sulis arise from a generation of users who've never needed to learn that BLAS implementations other than MKL exist. Since we're on AMD hardware that doesn't go well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91794ea6dd9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.