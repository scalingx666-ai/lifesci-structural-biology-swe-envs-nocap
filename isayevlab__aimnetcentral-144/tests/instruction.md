# Issue

**Title:** chore(deps): clear the open Dependabot alerts in the lockfile

## Description

Clears 14 of the 15 open Dependabot alerts on `main` by upgrading locked development dependencies. Every alert is against `uv.lock`; no published install is affected.

| Package | From | To | Alerts |
|---|---|---|---|
| anyio | 4.13.0 | 4.14.2 | 2 (1 critical) |
| virtualenv | 20.36.1 | 21.14.7 | 4 (3 high) |
| urllib3 | 2.7.0 | 2.8.0 | 3 (2 high) |
| tornado | 6.5.8 | 6.5.10 | 3 (2 high) |
| fsspec | 2025.12.0 | 2026.9.0 | 1 high |
| Mako | 1.3.12 | 1.4.3 | 1 medium |

virtualenv 21 also moves distlib, filelock (3 → 4) and packaging (25 → 26) and adds python-discovery. torch stays at 2.13.0.

Left open: the low-severity paramiko alert, which has no released patch. It is a test-only dependency reached through pysisyphus.

Generated with `uv lock --upgrade-package` for the six packages above; CI exercises the new lock in every lane.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c6592a162b6b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.