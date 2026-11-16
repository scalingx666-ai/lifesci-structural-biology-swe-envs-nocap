# Issue

**Title:** refactor(calculator): complete the neighbors/static-cache extraction

## Description

Completes the extraction that #96 described but did not fully land. What happened: during #96's flake investigation, a `git stash` (used to test the parent branch) was never popped, so the calculator.py side of the extraction — deleting the in-file AdaptiveNeighborList/geometry helpers, importing them from the new neighbors.py, and delegating the static caches to StaticInputCache — stayed in the stash. Only neighbors.py (correct but unused) and the test-tolerance fix merged. Every gate since passed honestly because calculator.py genuinely didn't change.

This PR applies the stashed extraction onto current main (clean 3-way apply over the intervening deterministic-mode and Ewald-migration changes, verified to coexist: no duplicate definitions, all three change-sets present). calculator.py drops from ~2,250 to 1,933 lines; all moved names remain importable from calculator.py via re-exports.

Verification: nbops/pbc/calculator/calculator_gpu suites 224 passed (including the GPU static-cache behavior tests that exercise the moved code), default suite 436 passed, A/B numerics bit-identical to main (pure code motion).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2f08c78902d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.