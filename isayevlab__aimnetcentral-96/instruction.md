# Issue

**Title:** refactor(calculator): extract neighbor utilities and static cache into neighbors.py

## Description

Moves AdaptiveNeighborList, the geometry/padding helpers (move_coord_to_cell, normalize_pbc, pad/unpad utilities), and the static-input cache storage into a new calculators/neighbors.py. Cache-key construction stays on the calculator (the keys encode calculator policy — cutoffs, LR wiring, device); the new StaticInputCache owns storage, weakref identity validation, and bounded eviction. All moved names are re-exported from calculator.py for backwards compatibility, and make_nbmat stays on the facade as orchestration.

Also fixes a pre-existing GPU test flake surfaced by this branch's gate: the two static-cache tests asserted repeated-eval force reproducibility at rtol=atol=1e-6, but plain repeated evals (no caching involved) differ by up to ~9.5e-07 on GPU float32 kernels — measured over 20 repeat pairs on an L40S. The forces tolerance is loosened to 1e-5 with a comment; the cache-behavior call-count asserts are unchanged.

Stacked on #95. Verification: test_calculator + test_pbc + test_calculator_gpu (188 passed; the one failure was the flake above, reproduced independently of this change and fixed), nbops/ops suites green, ruff/format clean, A/B numerics bit-identical to main at rtol=atol=1e-10 on CPU.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8f24372f9faa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.