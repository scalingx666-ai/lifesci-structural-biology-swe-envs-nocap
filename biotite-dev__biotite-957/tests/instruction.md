# Issue

**Title:** Add `allow_duplicates` parameter to `FastaFile` and `FastqFile`

## Description

This PR adds the `allow_duplicates` parameter to `FastaFile` and `FastqFile`. This adds support for `a3m` files that contain duplicate headers. If `allow_duplicates=False` an exception is raised if duplicate headers are encountered. Previously the last record with some identifier silently overwrote the previous sequence for the same identifier.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06ca1c349a32`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.