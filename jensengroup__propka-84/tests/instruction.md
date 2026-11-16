# Issue

**Title:** Allows for file-like objects to be passed to read_molecule_file

## Description

Changes:
  - open_file_for_reading: fseek -> seek
  - read_molecule_file: adds an extra argument `filename` which can be used to identify the file type when passing a file-like object. 
  - A version of the basic tests that passes a file object (:class:`_io.TextIOWrapper`) instead of the actual file path (this might be excessive / in the wrong place, but I thought I'd add them in anyways as a "proof of concept").

Question:
  - Should the extra attribute checks for the file-like objects removed in #40 be added back?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `01debbf63dd5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.