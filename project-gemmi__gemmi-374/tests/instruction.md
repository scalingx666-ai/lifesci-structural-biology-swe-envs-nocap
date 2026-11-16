# Issue

**Title:** use squared density in determine_cutoff_radius

## Description

When some of the coefficients in ExpSum are negative, `determine_cutoff_radius` may produce a very large cutoff radius.

This pull request attempts to fix the problem. It modifies the function to work with the square of the density, which is a nonnegative function of the radius. The behaviour for monotonically decreasing density should be the same, other than in cases when a small cutoff leads to underflow.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `32884fda1fa5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.