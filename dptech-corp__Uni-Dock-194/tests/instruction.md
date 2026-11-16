# Issue

**Title:** fix(ci): repair benchmark workflow (run_test.py + data download)

## Description

## Summary

The `Uni-Dock Benchmark` workflow could never run successfully. Three independent breaks:

1. **Dead script names** — it called `scripts/test_molecular_docking.py` and `scripts/test_virtual_screening.py`, which don't exist in `Uni-Dock-Benchmarks-bak` (the suite was refactored to a single `run_test.py` entry point with `run_dock.py`/`run_screen.py`).
2. **No data** — it never downloaded the benchmark dataset, so even the right script would have had nothing to run against.
3. **Missing required args** — `run_test.py` requires `--bin`, `--version`, `--type`, `--savedir`; none were passed.

## Changes

- Call `run_test.py` with explicit args for the Uni-Dock **V1** engine (`--bin unidock`, which is on `PATH` in the `dptechnology/unidock` image).
- Add a `getData.sh` step to fetch the dataset (the `bohrium-api.dp.tech` URL still resolves via redirect; SHA256 in the script matches).
- Point `--rootdir`/`--savedir` at the workspace and upload `res.csv`/`metrics.csv`.

## Verification

Ran this exact command form on an NVIDIA B200 (CUDA 12.8, unidock built for `sm_100`) against the Astex set — it runs end-to-end and produces `res.csv` + `metrics.csv` (0 failures, hit-rate ~0.64–0.72).

## Notes / follow-ups

- The default benchmark box is 30×30×30 Å at 0.375 Å spacing → an **81³ = 531,441-point grid, which exceeds `MAX_NUM_OF_GRID_POINT` (512,000 = 80³)** in `cuda/kernel.h`. Current `main` only "works" because the bounds `assert` is compiled out in Release and the `memcpy` silently overflows. Worth enlarging that buffer (this is the root cause behind #174 / #177).
- The `virtual_screening` step runs the full datasets, one of which (GBA) has ~458k ligands — likely needs a curated subset or a time budget for CI.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7b61b3fff56c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.