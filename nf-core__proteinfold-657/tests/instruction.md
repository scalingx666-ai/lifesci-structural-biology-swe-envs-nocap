# Issue

**Title:** Switch fix-linting to the hardened nf-core/actions reusable workflow

## Description

This replaces `.github/workflows/fix_linting.yml` with `.github/workflows/fix-linting.yml`, a short stub that calls the reusable [fix-linting workflow from nf-core/actions](https://github.com/nf-core/actions/blob/v1/.github/workflows/fix-linting.yml) ().

The old workflow ran the pull request's own lint hooks in a job that also held the nf-core-bot token. The reusable workflow checks who asked for the fix, runs the pull request's code without any secrets, and pushes the result from a separate job that never runs pull request code.

Commenting `@nf-core-bot fix linting` on a PR works as before. The next template sync makes the same change on `dev`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `290188b81830`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.