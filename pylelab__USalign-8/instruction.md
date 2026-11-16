# Issue

**Title:** Added Dockerfile

## Description

This merge request adds a `Dockerfile` from which a container containing just the executable binaries can be built.  The resulting container should be about 82MB.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f63edd7ddd4c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.