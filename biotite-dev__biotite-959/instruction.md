# Issue

**Title:** Support Python 3.15

## Description

Adds `cp315` to the wheel builds and bumps `cibuildwheel` from 3.3.0 to 4.3.1, the first release that ships the final CPython 3.15.0 (3.15 wheels are built by default since 4.2.0).

PyO3 0.29, which is already used, supports Python 3.15, so no changes to the Rust side are required.

Notes on the `cibuildwheel` 4 upgrade:
- `delvewheel` is now the default repair command on Windows. As the extension modules do not link to external DLLs, this should be a no-op.
- The new `abi3audit` step only applies to `abi3` wheels, which Biotite does not build.
- As before, free-threaded builds (`cp315t`) are not included.

`biotraj` has no `cp315` wheels on PyPI, so (like for `cp314` already) it is built from the sdist in the test step.

Furthermore, the `biotite.database.rcsb` doctests are adapted to the current RCSB search results: two new entries (`30OH`, `30OR`, 0.43 Å) now match the `reflns.d_resolution_high <= 0.5` example query.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1aaf784a826a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.