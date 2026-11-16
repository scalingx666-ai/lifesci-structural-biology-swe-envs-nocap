# Issue

**Title:** Refactors periodic general to be more useful and correctly propagate gradients wrt box shape.

## Description

Whereas before the `periodic_general` function used to accept a box shape as a callable, now `periodic_general` accepts a an affine transformation directly that may be overwritten. The new periodic general also propagates box shape derivatives correctly and contains two parameterizations. In particular, positions may be stored as fractional coordinates in the unit-cube, `[0,1]^d` or directly in a parallelepiped. 

Addresses issue #116.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `13202f73509d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.