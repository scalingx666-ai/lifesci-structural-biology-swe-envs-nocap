# Issue

**Title:** Publish to PyPI via trusted publishing

## Description

Switches the release publish step from the long-lived `PYPI_TOKEN` secret to PyPI Trusted Publishing (OIDC): the publish job gets `id-token: write` and `uv publish --trusted-publishing always` replaces the token flag.

**Merge prerequisite:** on PyPI, the `aimnet` project must first have a trusted publisher registered (GitHub, owner `isayevlab`, repository `aimnetcentral`, workflow `on-release-main.yml`, no environment) — requires the project owner. A second project owner should be added at the same time.

The `PYPI_TOKEN` secret stays untouched as a manual fallback; delete it after the first successful OIDC publish.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f346da00c3a7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.