# Issue

**Title:** pdb.rs: implement ISRC-string parsing

## Description

[Weirdness in the database format](https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/exports.html#long-utf16le)
requires this hack to parse ISRC strings properly. If this is not
accounted for, the contained string could contain invalid
utf16, causing the parser to crash.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `597b79b4cf7d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.