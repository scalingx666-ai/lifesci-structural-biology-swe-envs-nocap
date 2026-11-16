# Issue

**Title:** Add docstrings to SeqIO iterator __next__ methods

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

Adds one-line docstrings to the seven `__next__` methods across `Bio/SeqIO/` that were flagged by `flake8 --select D105`:

- `AceIterator.__next__` in `Bio/SeqIO/AceIO.py` (line 77)
- `PhdIterator.__next__` in `Bio/SeqIO/PhdIO.py` (line 82)
- `SwissIterator.__next__` in `Bio/SeqIO/SwissIO.py` (line 54)
- `TabIterator.__next__` in `Bio/SeqIO/TabIO.py` (line 85)
- `PdbAtomIterator.__next__` in `Bio/SeqIO/PdbIO.py` (line 354)
- `CifSeqresIterator.__next__` in `Bio/SeqIO/PdbIO.py` (line 500)
- `CifAtomIterator.__next__` in `Bio/SeqIO/PdbIO.py` (line 567)

Each docstring briefly states what the method returns and which file format the iterator handles, matching the abstract `SequenceIterator.__next__` in `Bio/SeqIO/Interfaces.py`.

This continues the incremental cleanup started in #2078 (Entrez XML), #3573 (ExPASy, motifs, SeqIO), and #5202 (FastaIO).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c7f250609181`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.