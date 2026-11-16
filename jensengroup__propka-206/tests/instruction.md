# Issue

**Title:** Modernized package by using pyproject.toml instead of setup.py

## Description

This modernizes the python packaging of propka. It's also useful for newer tools like `uv` which don't work without the pyproject.toml file. With this change you can just do `uv run pytest` in the folder and it creates the env and runs the tests.

In theory I can also get rid of versioneer if you want by jsut adding setuptools-scm to the build-system (which would allow us to remove the remaining setup.py as well as the versioneer.py and version.py files). I didn't do it here to not intervene too much but if you want I am more than happy to add the change.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e4ff69f27bf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.