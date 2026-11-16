# Issue

**Title:** add libpcre2 to Dockerfile

## Description

Docker build fails at the moment, as c47466dad68673dd6b7a0024fbb1a8d925a32ad9 introduced a new dependency on libpcre2 with the version bump of cifpp to 9. Installing `libpcre2-dev` fixes the build.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `97f77d616c6c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.