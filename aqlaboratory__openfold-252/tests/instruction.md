# Issue

**Title:** Fix for CPU only install

## Description

Fix for setup in case of lacking NVIDIA card and environment

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `59277de16825`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.