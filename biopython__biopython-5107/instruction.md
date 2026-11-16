# Issue

**Title:** Make pre-commit CI more helpful

## Description

.. by showing the diff on failure and by also checking all files to uncover e.g. existing imports to now-removed files.

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [x] I hereby agree to dual licence this under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

Make pre-commit CI more helpful by (1) showing the diff on failure ~and by (2) also checking all files to e.g. uncover existing imports to about-to-be-removed files~.

PS: This is [in line with the official pre-commit GitHub Actions action](https://github.com/pre-commit/action/blob/1b06ec171f2f6faa71ed760c4042bd969e4f8b43/action.yml#L7-L19).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d07dde90e0ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.