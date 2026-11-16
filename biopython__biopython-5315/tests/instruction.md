# Issue

**Title:** Declare Bio.Blast.BLASTXML to be obsolete.

## Description

See https://biopython.org/wiki/Deprecation_policy

The next step would be updating the tutorial, then later formal deprecation with some guidance needed.

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

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

Addresses comment  where @mdehoon  noted:

> Note that there is a newer parser for Blast XML files in Bio.Blast. It may not be worth the trouble to fix issues in the older parser in Bio.Blast.NCBIXML.

It may be pragmatic to then close #1000 and instead open a new but harder 'good first issues' for updating `Doc/Tutorial/chapter_blast.rst`?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fd0d9b8c4175`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.