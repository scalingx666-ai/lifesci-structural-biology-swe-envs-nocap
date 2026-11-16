# Issue

**Title:** Check bond counts when stacking atom arrays

## Description

This pull request is part of an LLM-assisted testing study of chemical software repositories. The model helped generate the chemistry-aware metamorphic test and draft this description; I ran the reproducer locally, minimized it, checked existing issues, and verified the regression test against the package.

 (unequal bond counts).

Check bond-list presence and bond counts before stacking, and copy the first model's bond list. This deliberately uses a cheap sanity check: equal bond counts with different connectivity or bond types remain accepted.

Removed the added regression tests as requested in review and added `benchmarks/structure/benchmark_stack.py` for models from the existing 1AKI fixture.

Local validation: 15 existing AtomArray tests, 38 BondList tests and 2 benchmark cases passed; Ruff 0.9.7 check/format and `git diff --check` passed.

Local wall-clock medians (7 repeats, Python 3.13, NumPy):

| Input | Models | Original | Full equality | Count check + copy |
|---|---:|---:|---:|---:|
| 1AKI, 1,079 atoms / 1,025 bonds | 2 | 0.099 ms | 0.265 ms | 0.111 ms |
| 1AKI | 10 | 0.474 ms | 1.360 ms | 0.508 ms |
| Synthetic chain, 100,000 atoms / 99,999 bonds | 2 | 6.296 ms | 30.931 ms | 6.717 ms |
| Synthetic chain | 10 | 30.612 ms | 155.337 ms | 30.828 ms |

These are local timing measurements, not CodSpeed/CI results. Fixture loading and construction are outside the timed calls. The original baseline is aaa9e969; full equality is 38148a31.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aaa9e969e263`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.