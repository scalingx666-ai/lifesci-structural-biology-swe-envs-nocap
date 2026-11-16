# Issue

**Title:** Accelerate a2c subcell generation function

## Description

Added an accelerated version of `get_subcells_to_crystallize()` called `get_subcells_to_crystallize_parallel()` which is backward compatible and contains two speedups: 

1. reducing the number of invalid potential subcells considered

2. parallelizing the search for subcells

Together, these changes provide at least 2x speedup for reasonably intensive problems and larger speedups as the problem size increases. 
 
Also added a `tests/a2c_test.py` which compares the new method to the original method to confirm they generate the same number of subcells.

## Checklist

- [ ] Tests added/updated and passing
- [ ] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `611678af2803`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.