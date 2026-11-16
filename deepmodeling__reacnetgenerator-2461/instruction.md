# Issue

**Title:** fix: bound multiprocessing results while preserving order

## Description

## Summary

- add an explicit in-flight bound and disk-backed spool for ordered multiprocessing results
- allow workers to finish out of order while preserving input order for the required Step 3 consumers
- preserve the legacy `run_mp` path and clean up workers and temporary files on errors or early termination

## Tests

- `pytest -q tests/test_utils.py`
- `pytest -q tests -k "not gui"`
- `ruff check .`
- `ruff format --check .`
- `git diff --check`

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Performance**
  * Improved multiprocessing reliability and resource control for large workloads.
  * Added support for preserving result order during parallel processing.
  * Reduced memory pressure by optionally storing intermediate results on disk.

* **Bug Fixes**
  * Improved handling of worker failures, exceptions, interrupted processing, and incomplete results.
  * Ensured temporary processing data is cleaned up after use.

* **Tests**
  * Added comprehensive coverage for ordered processing, workload limits, worker failures, cleanup, and early termination.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bace94ad8025`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.