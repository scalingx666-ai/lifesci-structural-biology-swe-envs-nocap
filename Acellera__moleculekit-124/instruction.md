# Issue

**Title:** chore: move configurations to `pyproject.toml`

## Description

This PR aims to minimize the number of configuration files for the project. Instead of a separate `pytest.ini` and `setup.cfg`, we now would have all the configurations within the `pyproject.toml` file leading to a overall minimal code structure.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8f12ddd21e51`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.