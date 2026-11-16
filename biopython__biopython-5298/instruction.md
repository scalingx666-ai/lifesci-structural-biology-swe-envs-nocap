# Issue

**Title:** Check offset bounds in PrintedAlignmentParser.feed()

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

Supersedes #5297, rewritten by hand as discussed there.

``PrintedAlignmentParser.feed()`` used ``offset`` as a pointer offset without
checking it, so a negative offset read before the start of the buffer
(corrupted sequence data) and a large one past the end (segfault). This adds
a ``ValueError`` bounds check in ``Parser_feed``. An offset equal to the line
length is still accepted and returns ``(0, b"")``.

The tests I added in ``Tests/test_Align_aligncore.py`` fail without the fix
and pass with it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8b4d499f0e42`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.