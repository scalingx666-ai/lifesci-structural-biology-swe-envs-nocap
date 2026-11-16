# Issue

**Title:** Add pickling support to SpaceGroup and UnitCell

## Description

I've been curious about adding pickling support to a few of the `gemmi` classes that are used in `reciprocalspaceship` to allow us to pickle our `DataSet` objects. My revisions to the python interface are based on https://pybind11.readthedocs.io/en/stable/advanced/classes.html#pickling-support.

This seems to mostly work -- however, on my fork it seems to be failing CI in Ubuntu 16.04/Clang 3.5. Please let me know if you have any thoughts on what seems to be going on.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9fa4a995c755`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.