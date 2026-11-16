# Issue

**Title:** Some documentation fixes

## Description

Searched for missing docstrings and (hopefully) fixed most of them.

`ActivityBubbleTemperature` and `ActivityBubbleTemperature` are missing in the code (maybe removed at some point without removing them in the docs?).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `596612064fe9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.