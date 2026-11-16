# Issue

**Title:** fix #602

## Description

The original purpose of `27f8ca85ded7b9cf1b73ea118119c6495eb2d563` was to fix a type inconsistency regarding the fourth return value (a vector) across the "fast path" and "general path" for the four functions:
- `bubble_pressure`
- `bubble_temperature`
- `dew_pressure`, and 
- `dew_temperature` 

when `length(_model_r) == 1`. The general path returns a `Vector{eltype(x)}`, whereas the fast path originally returned the input vector `x` as-is; since `x` could be a `StaticVector`, this created a mismatch with the `Vector` type returned by the general path, leading to unstable type inference by the compiler.

This commit preserves that fix for type stability and also resolves the issue of inconsistent return vector lengths identified in #602.

Regression tests added.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `987c8ca5ce29`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.