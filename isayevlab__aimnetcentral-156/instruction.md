# Issue

**Title:** chore(deps): support PyTorch 2.15, lock Warp 1.19, test sella/pysis on Python 3.14

## Description

Dependency and CI update for 0.2.6 (milestone 0.2.6).

## Changes

- **PyTorch 2.15:** added to the CPU CI matrix (`tests-torch`) and to `make gpu-validate`. Torch 2.15 publishes CUDA wheels for CUDA 13.2 only (it is not on the `cu126` or `cu130` indexes), so `scripts/gpu_validate.sh` gains `CUDA_INDEX_OVERRIDES` (default `2.15=https://download.pytorch.org/whl/cu132`). Documented range updated to 2.10–2.15 in the README, `getting_started.md`, and `gpu_validation.md`.
- **Warp 1.19:** lockfile `warp-lang` 1.18.0 → 1.19.0. Locked torch stays at 2.14.1.
- **Python 3.14 for `sella` and `pysis`:** lockfile `jax`/`jaxlib` 0.5.3/0.7.1 → 0.10.2 (Python 3.11) / 0.12.0.1 (Python 3.12+), which have cp314 wheels, and `sella` 2.4.2 → 2.6.0 (2.4.2 is sdist-only and its build pins scipy 1.14.1, which fails to build on 3.14 without OpenBLAS; 2.6.0 ships a pure-Python wheel). The `tests-sella` and `tests-pysis` jobs now run on 3.11 and 3.14.
- No change to `pyproject.toml` bounds: a fresh `pip install aimnet` already resolves to torch 2.15 and Warp 1.19.

## Validation (local, NVIDIA L40S)

`make gpu-validate`, torch 2.10–2.15, each with warp-lang 1.19.0 and nvalchemi-toolkit-ops 0.5.0:

| torch | GPU suite | max ΔE vs 2.10 | max ΔF vs 2.10 |
| --- | --- | --- | --- |
| 2.10.0+cu126 | 426 passed | baseline | baseline |
| 2.11.0+cu126 | 426 passed | 7.6e-06 | 8.0e-06 |
| 2.12.1+cu126 | 426 passed | 1.0e-06 | 9.5e-06 |
| 2.13.0+cu126 | 426 passed | 2.5e-07 | 7.2e-06 |
| 2.14.1+cu126 | 426 passed | 3.1e-06 | 7.9e-06 |
| 2.15.0+cu132 | 426 passed | 5.7e-06 | 7.6e-06 |

Also:

- torch 2.15.0 + Warp 1.19.0: default suite 1242 passed; GPU suite 426 passed, 2 skipped.
- Updated lock (torch 2.14.1 + Warp 1.19.0), CUDA hidden: default suite 1230 passed.
- Updated lock, `sella` + `pysis` tests: 6 passed on Python 3.11 (jax 0.10.2) and on Python 3.14 (jax 0.12.0.1).
- sella 2.6.0, clean uv cache: `-m sella` 2 passed on Python 3.11 and 3.14.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `622bbd2b2d84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.