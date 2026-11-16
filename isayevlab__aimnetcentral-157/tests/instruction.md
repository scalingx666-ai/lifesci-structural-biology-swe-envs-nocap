# Issue

**Title:** ci: run fewer, leaner jobs per push with a single ci-ok gate

## Description

Makes CI leaner and faster. This repository is public, so its Actions minutes are not billed; the organization's limit comes from private repositories. The goal here is fewer jobs and faster feedback.

## Changes

- **Single required check:** a `ci-ok` gate job needs every test job and fails if any failed or was cancelled; skipped jobs count as passing. Branch protection moves from 8 named checks to `ci-ok` alone, so jobs can be skipped, merged, or renamed without editing protection again.
- **Cancel superseded runs:** a new push to a PR cancels its running CI; on `main`, queued runs are replaced by the newest.
- **Tiered matrices:**
  - PRs run Python 3.11 and 3.14 and torch 2.10 and 2.15.
  - Pushes to `main`, manual runs (`gh workflow run main.yml --ref <branch>`), and PRs labeled `ci:full` also run Python 3.13, torch 2.11 to 2.13, and the TorchSim floor on Python 3.12. The label takes effect on the next push.
  - The torch entry equal to the locked version (2.14) is dropped, since `tests-core (3.11)` already runs it.
- **Extras consolidation:**
  - The seven per-extra jobs become `tests-extras`, one environment with every extra.
  - The GPU-marked periodic tests that run on CPU (`tests/test_pbc.py`, previously inside `tests-ase`, about 3 min) move to a parallel `tests-pbc-cpu` job.
  - Together the two marker expressions select the same 368 tests as the old jobs (checked by comparing collected test IDs).
- **Skips:**
  - Docs-only PRs (`docs/`, README, CHANGELOG, CONTRIBUTING, LICENSE, `mkdocs.yml`) skip the test jobs.
  - Draft PRs skip them until marked ready.
  - Docs deploy only after `ci-ok` passes on `main`.
- **Cheaper steps:**
  - drop unused `--cov` collection (nothing has uploaded it since #130);
  - skip `aimnet download --all` when the weights cache hits;
  - remove the Warp kernel cache, which was always saved empty;
  - `uv sync --locked`, and key the uv cache on `uv.lock`;
  - tighter timeouts, including the release workflow, which had none.
- **CodeQL:** runs only when Python files change, and cancels superseded runs. It is not a required check.
- **Dependabot:** ignores the versions the lock holds back on purpose (wandb 0.31, pandas 3, optuna 5, ruff 0.17).

## Expected effect (estimated from recent run timings)

| Per push | Before | After |
| --- | --- | --- |
| Code PR | ~56 runner-min, 23 jobs, ~5.7 min wall | ~29 runner-min, 12 jobs, ~4.5 min wall |
| Docs-only PR | ~56 runner-min | ~4 runner-min |
| Push to `main` | ~57 runner-min | ~42 runner-min |

## Trade-offs

- **Middle versions:** PRs no longer test Python 3.13 or torch 2.11 to 2.13. Those still run after every merge to `main`, or on a PR with `ci:full`.
- **Shared extras environment:** each extra is no longer installed alone, so a dependency missing from one extra could be hidden by another. deptry in `quality` and `tests-wheel` still check the declared dependencies.
- **TorchSim:** no longer tested on Python 3.13; 3.12 and 3.14 bracket it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `90b1b42de89b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.