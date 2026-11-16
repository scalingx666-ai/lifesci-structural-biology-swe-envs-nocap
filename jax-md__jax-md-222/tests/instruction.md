# Issue

**Title:** High precision sum fix

## Description

Currently, `util.high_precision_sum` always casts to `jnp.float64`, even if it is summing over an array of integers or complex floats. In this pr, `util.high_precision_sum` using `jnp.issubdtype` to check if the array is any int, float, or complex float, and chooses the proper type to upcast to accordingly. 

To ensure backwards compatibility for weird dtypes, the array is always promoted to float64 unless it is an int or complex float.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `52dbb04b7777`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.