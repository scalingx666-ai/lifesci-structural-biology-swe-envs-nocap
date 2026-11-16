# Issue

**Title:** override STRING_LENGTH at compile time

## Description

Allow preprocessor symbol `STRING_LENGTH_OVERRIDE` to override `STRING_LENGTH` in `Dictionary.f95`

Useful for situations where the large strings lead to being allocated in static memory, which breaks thread safety.  Incompatible with very long comment or command lines, obviously, but sometimes that's a necessary compromise.  Would probably be better to just go to all allocatable strings, or to be more selective about which strings really need to be the very long `STRING_LENGTH`, but that's much more work.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a8b97adadf96`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.