# Issue

**Title:** Improve error message of checking `box_size` type

## Description

It's also consistent with 
```
  raise ValueError(('Box must be either: a scalar, a vector, or a matrix. '
                    f'Found {box}.'))
```
in `space.py`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `66a576a24aea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.