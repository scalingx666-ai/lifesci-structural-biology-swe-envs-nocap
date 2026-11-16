# Issue

**Title:** Fix zip file handler leak

## Description

There was still a leak in file handlers in `open_file_for_reading` since the zipfile was never closed. This contextmanager now closes everything

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e4ff69f27bf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.