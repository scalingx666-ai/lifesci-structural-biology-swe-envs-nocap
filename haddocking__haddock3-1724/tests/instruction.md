# Issue

**Title:** Cap cleanup worker pools to available CPUs

## Description

Cleanup through `WorkflowManager.clean()` passed `ncores` unchanged to `multiprocessing.Pool`. With `ncores = 9999` it could start thousands of processes.

- `compress_files_ext()` now caps the pool to `min(ncores, cpu_count(), n_files)`
- `clean_output()` archive pool is capped to available CPUs as well
- Added a regression test in `tests/test_libio.py`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c51bf0c264e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.