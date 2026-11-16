# Issue

**Title:** Add manual GPU validation for the warp/nvalchemiops/torch coupling

## Description

## Summary

Adds a **manually-invoked** GPU validation tool for the warp-lang / nvalchemiops / torch coupling across PyTorch 2.8–2.12 — the part the CPU CI matrix structurally cannot cover (CUDA-only kernels, an incoherent reinstall-on-top env, network/ASE-gated model).

`make gpu-validate` (on a CUDA box) loops over torch 2.8/2.9/2.10/2.11/2.12 and per version: builds a **resolver-coherent** venv (matching CUDA torch wheel + its triton, plus aimnet + warp-lang + nvalchemiops, on Python 3.12), runs `pytest -m gpu`, and computes deterministic energies/forces. A **same-run torch-2.9 baseline** is then used to diff every other version. It prints a verdict matrix (install / gpu-suite / maxΔE / maxΔF / resolved dep quad) and exits nonzero on any failure. No golden numbers are committed.

### Components
- `aimnet/validation/compare_observables.py` — pure, stdlib comparator (8 CPU unit tests).
- `aimnet/validation/gpu_observables.py` — CUDA-guarded entrypoint (skips cleanly without a GPU).
- `scripts/gpu_validate.sh` + `make gpu-validate` (+ `DRY_RUN=1` to inspect commands).
- `docs/gpu_validation.md`.

### What CI covers vs. not
- **CI (here):** comparator unit tests, `gpu_observables` importability + CUDA-guard, `make check`, docs build.
- **Manual (CUDA box):** the actual matrix run — this is the acceptance step; paste the resulting table into the release note.

### Review-caught fixes (GPU path, invisible to CI)
- Legs now execute via `$VENV/bin/python` because `uv run` ignores `VIRTUAL_ENV` (would otherwise silently test the repo `.venv` for every leg); `pytest` is installed into each per-version venv.
- Dropped a wrong `forces.squeeze(0)` — single-structure output is `(N,3)` with no batch dim.
- Anchored the baseline prefix match; clarified the Python-3.12 rationale.

## Test plan
- `uv run pytest tests/test_compare_observables.py` → 8 passed.
- `make check` green; `mkdocs build -s` clean.
- `DRY_RUN=1 bash scripts/gpu_validate.sh` prints five coherent per-version command sets.
- Full GPU run pending a CUDA machine.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9fccbf48a2df`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.