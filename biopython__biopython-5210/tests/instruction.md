# Issue

**Title:** Update docstrings to refer to the function being described

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

This “As … objects are immutable …” paragraph appears to have been copied around, and the function name has not always been updated to the function whose docstring contains this copy of the text. This PR updates the incorrect ones.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1043c225579c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.