# Issue

**Title:** add static geometry cache

## Description

## Summary
- Add opt-in `cache_static=True` for exact repeated resident CUDA geometries.
- Reuse calculator-built neighbor matrices and explicit external DFTD3 energy/force terms.
- Keep charge and multiplicity out of the geometry cache key so same-geometry charge-grid, AIMNet2-NSE, and cDFT-style calculations can reuse geometry-dependent work while model outputs still recompute.

## Scope and limits
- CUDA resident tensors only; host/NumPy inputs copied inside the calculator do not use this cache.
- Non-periodic 2D single-system calculator-built neighbor lists only.
- Bypassed for Hessian, stress, training mode, caller-provided `mol_idx`, and caller-provided `nbmat`.
- Does not cache model outputs, Coulomb terms, moving-geometry neighbor lists, precision policy state, or production profiling/NVTX hooks.

## Validation
- `python -m py_compile aimnet/calculators/calculator.py`
- `pytest -q tests/test_calculator_gpu.py -k 'static_cache or static_dftd3'`\n- `pytest -q tests/test_calculator_gpu.py`\n- `pytest -q tests/test_calculator.py`\n- `git diff --check`\n- precision/profiling exclusion check for `_precision_policy`, calculator `precision=`, NVTX/profiling, `neighbor_skin`, and dense-fast-path scratch flags\n

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8092749f92e3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.