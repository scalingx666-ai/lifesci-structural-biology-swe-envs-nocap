# Issue

**Title:** Add docstrings to FastaIO iterator __next__ methods

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Partial fix for #2116.

Adds one-line docstrings to the four `__next__` methods in `Bio/SeqIO/FastaIO.py` that were flagged by `flake8 --select D105`:

- `FastaIterator.__next__` (line 225)
- `FastaTwoLineIterator.__next__` (line 274)
- `FastaBlastIterator.__next__` (line 361)
- `FastaPearsonIterator.__next__` (line 454)

Each docstring briefly states what the method returns and which FASTA variant the iterator handles, matching the abstract `SequenceIterator.__next__` in `Bio/SeqIO/Interfaces.py`. The file has no other D105 violations after this change.

This continues the incremental cleanup started in #2078 (Entrez XML) and #3573 (ExPASy, motifs, SeqIO).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8dcaccb6b78a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.