# Issue

**Title:** docs(calculator): limit the deterministic guarantee to the dense layout

## Description

First step for #140 (docs and tests only; no behavior change).

`deterministic=True` was documented as making repeated identical evaluations bitwise reproducible. On CUDA that holds only on the dense layout: 3D input with at most `nb_threshold` atoms per system, no cell, no Hessian, and no caller-supplied `mol_idx` or `nbmat`. The packed neighbor-list layout, used everywhere else (including every CPU evaluation), still varies at about 1e-6 eV/Å in forces. Three things contribute:
- neighbor-list row order;
- the `mol_sum` / `index_select` reductions;
- the atomics in the Warp `conv_sv_2d_sp` backward.

Changes:
- **Calculator docstring, `docs/calculator.md`, and the Unreleased CHANGELOG entry:** state the dense-layout condition. They also say that reproducibility requires the same batch composition and order, GPU, and build, and that switching layout or batch composition shifts results at the rounding level. The docs page adds a short conformer-ranking recommendation: converge tightly, then re-optimize the finalists one at a time on the dense layout.
- **New GPU tests on taxol (113 atoms), 10 repeated evaluations each:**
  - the dense layout must be bit-identical, which passes today;
  - packed-layout energy and packed-layout forces are separate `xfail(strict=True)` tests, so each fix flips exactly one of them.

  A single packed repeat matched by chance about once in twenty, so 10 repeats keep a spurious strict-xfail pass negligible.

Verified locally on an L40S: 2 passed, 2 xfailed. Without the xfail marker, both packed tests fail on the bit-identity assertion.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ffcd6366d822`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.