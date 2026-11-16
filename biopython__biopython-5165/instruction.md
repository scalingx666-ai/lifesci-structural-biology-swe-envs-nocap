# Issue

**Title:** No nested array access and use math.sin/cos in vectors

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Simple changes from #5160, work towards #5135 (NumPy 2.4 compatibility). Here just:

* No nested array access (I assume from very old numpy code)
* Keep angles as floats (some seemed to have been arrays for no good reason)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `471a866f995e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.