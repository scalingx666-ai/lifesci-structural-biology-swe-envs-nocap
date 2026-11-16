# Issue

**Title:** COSMOSAC updates

## Description

our implementation was comically slow. the new impl is around 1000x faster.
the performance optimizations used were the following, in order of speedups:
1. preallocate a PW matrix containing P(sigma)*exp(-deltaW(sigma_i,sigma_j,T)/T)
2. when solving the fixed point system, exclude the positions where P(sigma_i) == 0
3. on COSMOSAC10 (and COSMOSACdsp), express the system as one matrix with one profile (instead of 3 different profiles, this allows those activity models to use the performance optimizations)
4. with points 1) and 2), the system is just a matrix multiply. we can instead reuse the already solved Γi in the current iteration (sort of a "carried" matrix-vector multiply, if that term exists)

To support the COSMOSAC solvers, the fixed point solver (`Clapeyron.Solvers.SSFixPoint`) now supports setting `lognorm::Bool` and `normorder::Float64`. `normorder` is passed to `norm(x,normorder)` whereas `lognorm` changes the calculation of the norm from `norm(x - xold,normorder)` to `norm(x/xold - 1,normorder)`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fafbff01f335`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.