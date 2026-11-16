# Issue

**Title:** Use path to stereo_chemical_props.txt relative to batch.py

## Description

Otherwise, batch.py cannot find the file in some running scenarios.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `64eebd34cc18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.