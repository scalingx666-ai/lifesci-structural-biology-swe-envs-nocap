# Issue

**Title:** Replace PROPKA pickle with JSON

## Description

* Load PROPKA 3.1 data from a pickle rather than JSON to increase platform independence.
* Also fix errors in __init__.py and provide module-level docstring.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91925bb92092`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.