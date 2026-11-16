# Issue

**Title:** Raise PDBIOException when residue name exceeds 3 characters

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.
- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit`` locally, and understand that continuous integration checks will be used to confirm the Biopython unit tests and style checks pass with these changes.
- [x] I have added my name to the alphabetical contributors listings in the files ``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed already, or do not wish to be listed. (*This acknowledgement is optional.*)

This PR adds a validation check in `PDBIO._write_structure()` to ensure that residue names do not exceed the legacy PDB format limit of 3 characters. If a residue name exceeds 3 characters (such as modern 5-character CCD codes like `A1AJ1`), it cleans up the file handle using `self._revert_write()` and raises a `PDBIOException`, preventing corrupted files from being silently written. A regression test has also been added.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fc0c156786e8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.