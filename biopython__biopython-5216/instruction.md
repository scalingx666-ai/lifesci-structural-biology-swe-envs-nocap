# Issue

**Title:** Add docstrings to remaining SeqIO iterator __next__ methods

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Partial fix for #2116 — finishes off the `__next__` D105 violations in
`Bio/SeqIO/` after #5202 and #5205. Eight one-line docstrings across
GckIO, GfaIO (Gfa1Iterator and Gfa2Iterator), SffIO, SnapGeneIO,
UniprotIO, XdnaIO, and `AlignmentSequenceIterator` in `__init__.py`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0271a9fcdaf2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.