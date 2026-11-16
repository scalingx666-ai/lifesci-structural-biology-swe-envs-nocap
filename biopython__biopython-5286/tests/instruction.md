# Issue

**Title:** DOCS: fix stale param name in Bio.Entrez._open docstring

## Description

The `_open()` function takes request, but its docstring still refers to the parameter as `req_or_cgi`. This updates the parameter name in the docstring to match the function signature.

_Git history shows this docstring was rewritten when `_open` was refactored from `_open(cgi, params=None, post=None, ecitmatch=False)` down to `_open(request)`; the doc field was never updated to match the new parameter name and has said `req_or_cgi` ever since._

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

Closes #NA

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c9489604d1d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.