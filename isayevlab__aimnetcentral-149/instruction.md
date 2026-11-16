# Issue

**Title:** ci: publish to PyPI with the PYPI_TOKEN secret again

## Description

The v0.2.5 release upload failed because no trusted publisher is registered for this project on PyPI (`invalid-publisher`). This goes back to the token upload that published v0.2.0 (`PYPI_TOKEN` secret, passed as `UV_PUBLISH_TOKEN`).

It also adds a `workflow_dispatch` trigger with a `tag` input. A re-run uses the workflow file at the tag, so this is how v0.2.5 gets published from the existing tag without moving it. Releases still publish automatically when a GitHub release is published.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5b2e833120a1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.