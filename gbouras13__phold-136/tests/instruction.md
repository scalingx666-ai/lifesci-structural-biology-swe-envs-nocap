# Issue

**Title:** Add protocols paper citation and bump version to 1.3.1

## Description

phold citation now also prints the Pharokka/Phold/Phynteny protocols paper alongside the existing Phold citation. Also syncs the VERSION file, which had drifted out of sync with pyproject.toml.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `858e298f6f4a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.