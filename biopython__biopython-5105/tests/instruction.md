# Issue

**Title:** Fix PDB output formatting

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

 

`_ATOM_FORMAT_STRING` is missing a space between the B-factor column and the final element. Therefore, `.pdb` saved with BioPython can't be read back into RDKit. This change just adds the required space which was probably accidentally removed in #5047 . Changes include a new test.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fe756122a304`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.