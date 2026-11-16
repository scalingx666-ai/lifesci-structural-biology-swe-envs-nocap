# Issue

**Title:** Add long-range Coulomb Hessians and batched Hessian support

## Description

## Summary

Enables long-range Coulomb Hessians and lifts the single-structure restriction on Hessian calculations in `AIMNet2Calculator`. Previously `calc(data, hessian=True)` raised `NotImplementedError` for all periodic LR Coulomb methods (`dsf`, `ewald`, `pme`) and supported only a single structure.

- **DSF Hessian + training:** adds a closed-form, autograd-twice-differentiable pure-PyTorch DSF Coulomb energy (`LRCoulomb._coul_dsf_torch`) and routes to it for Hessian and force/stress training (the `nvalchemiops` DSF kernel detaches geometry). Includes the DSF self-energy term; matches the kernel energy to 1e-4, including the periodic path (`shifts @ cell`).
- **Ewald/PME Hessian:** provides a Hessian via central finite-difference of the analytic `nvalchemiops` forces (`_coul_nvalchemi_fd_hessian`), computed in float64, summed with the NN + short-range autograd Hessian in `get_derivatives`. The short-range subtraction stays in the autograd graph, so the FD block supplies only the full-periodic term (correct for both `subtract_sr` settings).
- **Batched Hessian:** supports 3D batched inputs (stacked `(B,N,3,N,3)`) and multi-molecule `mol_idx` inputs (per-molecule list) via a per-structure loop over the existing validated single-structure path. Composes with the periodic paths above.
- Documents the physical distinction for vibrational/IR use: Ewald/PME Hessian is **fixed-charge** (long-range), DSF is **relaxed-charge**; the DSF force-shift makes the energy only C¹ at the cutoff.

## Test Plan

- [x] DSF Hessian: finite, symmetric; torch energy matches kernel (non-periodic and periodic).
- [x] DSF force/stress training: torch-path forces match kernel inference.
- [x] Ewald/PME Hessian: finite, symmetric, acoustic sum rule; FD-of-forces block matches an independent energy-FD second derivative (float64).
- [x] Batched: 3D batch stacks and matches per-structure; multi-molecule returns a per-molecule list; batched periodic Ewald Hessian stacks.
- [x] `tests/test_calculator.py`, `tests/test_pbc.py`, `tests/test_lr.py`: 227 passed.

## Notes

- Requires `nvalchemi-toolkit-ops >= 0.3.1` (already declared in `pyproject.toml`; the `hybrid_forces` kernel arg the Ewald/PME path uses is absent in 0.3.0).
- Multi-molecule Hessians remain unsupported within a single structure call (existing guard retained; batching dispatches per-structure instead).
- Pre-existing, unrelated: `tests/test_pbc.py::TestCalculatorPBC::test_calculator_pbc_both_methods[dsf]` fails under certain test orderings with `RuntimeError: Cannot access data pointer ... that doesn't have storage` (a FakeTensor leak from an earlier `torch.compile`/`vmap` test). This reproduces on `main` and passes in isolation; it is a test-isolation artifact, not a product regression from this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5b76c17a46b2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.