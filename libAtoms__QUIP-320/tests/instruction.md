# Issue

**Title:** Docker

## Description

- Move the docker files here from quip-docker repo
- remove the three image build, which was an artefact of the travis build pipeline's limitations, which is not the case any more

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b9932941d36e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.