# Issue

**Title:** Update Dockerfile

## Description

Debian stable (Bookworm) includes the OpenBabel packages along with the OpenBabel Python bindings. Utilizing this as the base system should enable a reduction in both the Docker image size and build times.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9ee79a424a2e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.