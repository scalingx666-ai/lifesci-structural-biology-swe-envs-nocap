# Issue

**Title:** Accept CLUSTALW as a Clustal header word

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Some tools (Benchling, per the issue) write the Clustal header as a single word, `CLUSTALW`, rather than `CLUSTAL W`. Both the `Bio.AlignIO` and `Bio.Align` Clustal parsers reject that with `ValueError: CLUSTALW is not a known CLUSTAL header`.

This adds `CLUSTALW` to the known-program list in both parsers, as suggested in the issue discussion, with a test for each.

Tested: the two new tests fail on master and pass with the change; `test_AlignIO_ClustalIO`, `test_Align_clustal`, `test_AlignIO`, `test_SeqIO` pass; `pre-commit` is clean.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `372c71069d9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.