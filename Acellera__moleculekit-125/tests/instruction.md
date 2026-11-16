# Issue

**Title:** chore: drop redundant lgtm configuration

## Description

This PR aims to remove the redundant LGTM configuration from the repository. It was deprecated a while back [(Source)](https://github.blog/2022-08-15-the-next-step-for-lgtm-com-github-code-scanning/), It's now a part of Github Code Scanning.

Another evidence is the lgtm grade "no longer available" badge in the README.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ddd2d338bc0b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.