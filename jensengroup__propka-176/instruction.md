# Issue

**Title:** Refactor deprecated pkg_resources usage

## Description

- Remove deprecated [pkg_resources](https://setuptools.pypa.io/en/latest/pkg_resources.html) usage
- Locate resources relative to `__file__`
- Support egg/zip with `open_file_for_reading`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a62e2a4dae02`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.