# Issue

**Title:** Add Dockerfile (PyTorch base image)

## Description

This PR includes a Dockerfile for running the AF3 library in a container. The included Dockerfile uses a PyTorch base image and installs from the repo's contents (rather than from PyPI).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ade2e1e95fb7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.