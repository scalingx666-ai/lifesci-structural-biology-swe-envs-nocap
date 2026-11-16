# Issue

**Title:** style(lint): only warn on missing docs

## Description

Otherwise the build fails when you just want to prototype. The workaround of spamming `/// TODO` everywhere leads to oversights.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e10575d8950`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.