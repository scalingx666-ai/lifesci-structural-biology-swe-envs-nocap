# Issue

**Title:** Maintenance + README update

## Description

## Maintenance

- [JAX 0.7.0](https://docs.jax.dev/en/latest/changelog.html#jax-0-7-0-july-22-2025) doesn't support Python 3.10 anymore
- dataclasses doesn't need to be in the setup anymore
- Fixed Python tests

There is still an issue in rigid_body_tests.py, where a segmentation error occurs, but I think it's JAX-related. We have to wait and see if this gets fixed.

## README updated

- Added a publication
- Removed pip install jax-md as the PyPi version is not up-to-date

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3571f47bd37a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.