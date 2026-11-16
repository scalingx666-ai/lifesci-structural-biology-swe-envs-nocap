# Issue

**Title:** Use float64 for SevenNet energy rescaling by default

## Description

I left the single precision option for backward compatibility.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `02c993e844da`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.