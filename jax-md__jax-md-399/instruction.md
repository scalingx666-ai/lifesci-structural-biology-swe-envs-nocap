# Issue

**Title:** Trigger did_buffer_overflow if multi-image neighborlist needs to search more shifts

## Description

Currently, if the box shrinks during simulation (e.g. structure relaxation) the resulting neighbor list can be incorrect if more cell repeats are needed to account for the smaller cell size. This fix, sets `did_buffer_overflow=True` which should prompt the user to rebuild the neighborlist (along with the new cell/repeats) in order to get the correct edges.

## Checklist

- [X] Tests added/updated and passing
- [X] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `611678af2803`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.