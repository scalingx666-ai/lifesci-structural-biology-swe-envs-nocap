# Issue

**Title:** minor fix in error messages from mk_prepare_ligand stdout pdbqt

## Description

When using -/--, no PDBQT files are written, as expected, but there' was an unwanted error message about zero files being written.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1adb81a19e02`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.