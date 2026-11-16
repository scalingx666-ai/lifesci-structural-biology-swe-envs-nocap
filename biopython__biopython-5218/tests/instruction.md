# Issue

**Title:** Switch some percent formatting to f-strings with pyupgrade v3.19.1

## Description

Ran this twice (for percent to format method to f-string):

```
$ pyupgrade --py310-plus BioSQL/*.py Bio/*.py Bio/*/*.py Bio/*/*/*.py Tests/*.py
```

Then reverted the changes still stuck at the format method.

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

, with this applied:

```
$ flake8 --isolated --select SFS --quiet --statistics BioSQL Bio
...
730   SFS101 String literal formatting using percent operator.
111   SFS102 Bytes literal formatting using percent operator.
19    SFS201 String literal formatting using format method.
1348  SFS301 String literal formatting using f-string.
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95ff2cbbc5f3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.