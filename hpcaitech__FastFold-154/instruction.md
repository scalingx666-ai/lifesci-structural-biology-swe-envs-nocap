# Issue

**Title:** [README] remove pre_built wheel of installation and update readme

## Description

1. ColossalAI now removes the downloading page of pre-built wheels. And the PyPI download way is now blocked.
2. triton==2.0.0.dev20221005 is now unavailable. To escape frequently updating, just use the newest.
3. Update Dockerfile.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50620db4d8dd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.