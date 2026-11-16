# Issue

**Title:** Fix virial models

## Description

Some virial models had wrong numbers in their code that differed from those in the docstrings. I also compared to Poling (2001), which agrees with the numbers from the docstring.

This PR fixes these numbers

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c533b020d53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.