# Issue

**Title:** Custom partition and smap

## Description

- Example of extending the `partition.py` while keeping backward compatibility.
- JIT friendly O(N^2) neighborlist for handling small cells and mixed PBC.

## Checklist

- [x] Tests added/updated and passing
- [x] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a386311eec2b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.