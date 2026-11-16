# Issue

**Title:** Add a `__version__` attribute

## Description

This PR adds support for the following behavior:

```python
import sevenn

print(sevenn.__version__)
```

This allows users to programmatically access the version of SevenNet, which is important given model changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a73296b80dd8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.