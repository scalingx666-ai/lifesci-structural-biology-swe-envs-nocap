# Issue

**Title:** Remove farray.__getslice__ and farray.__setslice__

## Description

The methods are replaced with ``_getindex__(slice(i, j))`` in
Python 3 and Numpy 1.13

Required logic for Fortran indexing is moved into ``__getindex__``

Travis testing will run with newest Numpy.

All the tests pass on both 1.12 and 1.13.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `97f293194e18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.