# Issue

**Title:** Fix failing CI tests

## Description

MKL_jll v2024.0.0 fails to compile on several systems I've tried. Package dependencies should be set up to prevent installation, but resolving versions occasionally fails and installs this version anyway.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d22b506cc09`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.