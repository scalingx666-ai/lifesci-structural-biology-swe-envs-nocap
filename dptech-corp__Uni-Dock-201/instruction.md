# Issue

**Title:** unidock_tools: widen requires-python to >=3.10 (support Python 3.13/3.14)

## Description

The `requires-python = ">=3.10,<3.13"` cap blocks installing `unidock_tools` on Python 3.13/3.14, which broke the conda-forge build (it builds variants for those interpreters).

Verified on conda-forge for **both 3.13 and 3.14**: dependency solve, `pip install`, and `unidocktools --help` all succeed. The cap was conservative; dropping the upper bound lets the package build for current interpreters.

Pairs with the conda-forge feedstock PR that builds py3.13/3.14 (previously skipped).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95e409172b15`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.