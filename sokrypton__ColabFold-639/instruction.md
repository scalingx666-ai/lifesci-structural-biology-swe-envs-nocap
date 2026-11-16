# Issue

**Title:** Support `aarch64` with pip

## Description

This is a minimal PR changing `tensorflow-cpu -> tensorflow` in `pyproject.toml` as Tensorflow does not build wheels of tensorflow-cpu for Arm. 

 for more details.

@milot-mirdita Do you think there is a better way to overcome thi?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `800bd5f29791`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.