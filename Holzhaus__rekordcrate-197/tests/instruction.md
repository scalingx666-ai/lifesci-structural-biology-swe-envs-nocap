# Issue

**Title:** Automate row group offsets and presence flags

## Description

When writing a RowGroup, calculate the offsets and presence flags from the `Vec<Row>` object rather than requiring them be set by the user, removing potential errors. This does mean that a serialized RowGroup will place rows without gaps even if the original deserialized file did have gaps, so it is no longer guaranteed that a deserialize-serialize round trip will give the same binary contents (but the logical contents should be the same).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03518d29ba3d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.