# Issue

**Title:** Fix/seq feature fromstring

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

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->



The fromstring method of the abstract Location class is missing a method decorator, which causes the first argument to be interpreted as self. This doesn't lead to any problems when calling it from the class, but confuses tooling.

Note that the commit that added this (908ee298) speaks of a "fromstring class method", so taking this method in the instance context should be fine.

I agree to my contributions being dual licensed under the BSD 3-Clause and Biopython License

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `32b964861787`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.