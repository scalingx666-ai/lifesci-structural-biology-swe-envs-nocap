# Issue

**Title:** plipcmd needs `plip.` in imports

## Description

In order to use a `plipcmd` installed with `python setup.py install`, or if the `PYTHONPATH` is set without the final `/plip` as changed in a90b5bb997d7bc467a36363a88e97c6e965c4d09, `plipcmd` now needs to have internal imports prefixed with `plip.`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `548c11bb4c03`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.