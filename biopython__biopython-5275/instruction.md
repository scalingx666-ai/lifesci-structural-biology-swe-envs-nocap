# Issue

**Title:** Fix GenBank Record serialization of WGS ranges

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

 

`RecordParser` stores parsed `WGS` ranges as lists of endpoints and `WGS_SCAFLD` ranges as lists of endpoint lists. `Record.__str__` currently attempts to concatenate those lists directly with strings, causing a `TypeError`.

This change:

- joins each WGS range's endpoints with a hyphen;
- emits each `WGS_SCAFLD` range on its own line; and
- adds regression coverage for one WGS range and multiple scaffold ranges.

Tests:

- `python Tests/run_tests.py --offline`: 514 tests passed
- `pre-commit run --all-files`: all hooks passed

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `98059a63bf67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.