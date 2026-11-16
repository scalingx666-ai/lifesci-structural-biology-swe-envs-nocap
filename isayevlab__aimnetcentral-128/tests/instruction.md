# Issue

**Title:** chore: genericize the remaining solvation-artifact references

## Description

## Problem

The earlier genericization pass (51bb32b) covered `artifact_validation.py` and two test modules, but five sites still name a specific unreleased solvation artifact by filename:

- two comments in `aimnet/calculators/calculator.py`
- a docstring and a comment in `tests/test_calculator.py`
- the issue #118 entry in `CHANGELOG.md`

## Fix

The comments explain a metadata-vs-module-tree contradiction, which is a property of the artifact *shape* rather than of any one file, so the generic wording carries exactly the same information for a future reader.

Comment- and docstring-only: no source line changes.

## Verification

CI core selection: 522 passed — identical to the `main` baseline, as expected for a comment-only diff.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3dabad9100de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.