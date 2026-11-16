# Issue

**Title:** Calculate index_shift for rows

## Description

`index_shift` appears to always be 0x20 * the index of the row in the page, so just calculate this value when writing the row rather than requiring it be set by the user.

The test changes are:
* Remove index_shift from object construction
* Replace the index_shift binary in single-row unit tests as though they were the first row - some tests set a non-zero index_shift which fails now that we assume index_shift starts at zero

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9918398708cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.