# Issue

**Title:** Raise when two SD records share a name

## Description

`SDFile` is a name -> record map. if two ligands show up with the same mol name, deserialize used to keep the last one and throw the first away. no warning, no error.

i made it raise `InvalidFileError` instead. `__setitem__` still overwrites on purpose, that's just dict behavior.

added `test_duplicate_record_names_raise` with the two `"duplicate"` records from the issue.

if you'd rather keep both records (e.g. `duplicate`, `duplicate_2`) i can switch it. raising felt safer so a file can't lose a compound on the way in.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aaa9e969e263`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.