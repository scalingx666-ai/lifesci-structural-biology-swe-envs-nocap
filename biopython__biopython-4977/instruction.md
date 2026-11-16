# Issue

**Title:** Locale independent date serialization

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Locale independent date serialization when writing GenBank file. Also added support for datetime.date.
Added test with various local known to make the former serialization fail (when available).

Show a warning when writing a file with an invalide date format

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `062eb515f54f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.