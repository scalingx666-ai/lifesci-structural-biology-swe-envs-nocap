# Issue

**Title:** move to github actions for CI

## Description

* move from Travis CI to Github Actions in order to test both on linux and windows
 * test install on python 3.5, 3.6, 3.7 and 3.8
 * remove matplotlib dependency (was breaking windows build)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1065ff310172`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.