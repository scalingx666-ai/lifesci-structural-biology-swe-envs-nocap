# Issue

**Title:** Aligner default arguments

## Description

To be consistent with `Bio.pairwise2`, the pairwise aligner in `Bio.Align` uses a match score of +1, a mismatch score of 0, and a gap score of 0 by default.
However, this is almost never a good scoring scheme. In particular, any mismatch can be replaced by an insertion followed by a deletion, or a deletion followed by an insertion, and yield the same score.
This results in a large number of alignments with only trivial differences between them.
For example, aligning two sequences of 75 randomly chosen letters against each other yields >9223372036854775807 alignments (i.e., greater than sys.maxsize).
In contrast, with gap_score = -1 only one or a few alignments are returned.

To alert users to this change, a warning is issued the first time an aligner is used in which the gap score was not set explicitly.

This PR does not change the default parameters for `Bio.pairwise2`, as that module is already deprecated.

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e43775844c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.