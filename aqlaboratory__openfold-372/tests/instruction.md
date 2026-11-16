# Issue

**Title:** Fixes imports to colab notebook.

## Description

- Requires pinning to pytorch<2 via pip install.
- Pins reference openfold repo to commit [099769d](https://github.com/aqlaboratory/openfold.git@099769d2ecfd01a8baa8d950030df454a042c910)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `099769d2ecfd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.