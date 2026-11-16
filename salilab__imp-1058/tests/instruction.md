# Issue

**Title:** Consistent eigenvector ordering when calculating body centric reference frames for rigid bodies

## Description

When calculating body centric reference frames for rigid bodies ```IMP::core::get_initial_reference_frame()``` uses ```Eigen::EigenSolver``` to perform an eigen-decomposition on the inertia tensor. The eigenvectors thus produced have no fixed ordering, as opposed to the standard practice of ordering them in increasing or decreasing order of eigenvalues. This produces in-determinate behavior when comparing body-centric reference frames on coordinate sets that come from affine transforms of the same rigid body. 

```Eigen::EigenSolver``` has been swapped out for ```Eigen::SelfAdjointSolver``` which consistently produces eigenvectors in increasing order of their eigenvalues. Further since the inertia tensor is symmetric, it is guaranteed to have only real eigenvalues so no separate check of real vs complex is necessary. ```Eigen::EigenSolver``` is also much faster since it assumes symmetry of the input matrix. 

Solves #1057

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a8b689b6f933`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.