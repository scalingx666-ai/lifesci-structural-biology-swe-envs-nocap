# Issue

**Title:** Parallelise unit tests with ParallelTestRunner

## Description

Instead of splitting unit tests into groups based on the ordering in `runtests.jl`, have multiple parallel workers execute every separate test file instead. This reduces setup overhead and hopefully should make things slightly faster.

## Strategy for future unit tests.
- When adding unit tests, make sure to add any new package dependencies to `test/Project.toml`, not the main `Project.toml`.
- Unit tests should be as small as practical, as they will be run in parallel automatically.
- This means no `include()` statements in test sets.
- Any files in `test/` will be read automatically, no need to add anything more to `test/runtests.jl`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5ca3e8506072`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.