# Issue

**Title:** Fix: Push Docker image only on non-PR events

## Description

Update the build_server workflow to push the Docker image only if the event is not a pull request. This prevents images from being pushed during pull request builds.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3432637ee6bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.