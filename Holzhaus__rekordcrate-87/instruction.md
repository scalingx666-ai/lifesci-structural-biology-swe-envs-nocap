# Issue

**Title:** build(cargo): Bump version to 0.2.0

## Description

Since v0.1.0 we switched from `nom` to `binrw` and added support for parsing `*SETTING.DAT` files, so it's really more than just a bug fix release. Although the switch to `binrw` is an API change, the major we don't want to bump the version `1` in order to emphasize that the API is not finalized and subject to changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c3a480736f8d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.