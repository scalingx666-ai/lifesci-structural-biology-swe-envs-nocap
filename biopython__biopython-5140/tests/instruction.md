# Issue

**Title:** Replace print statements with warnings/stderr in NCBIXML

## Description

## Summary
This PR replaces print statements in `Bio/Blast/NCBIXML.py` with appropriate alternatives:

- **Debug mode prints** → `sys.stderr.write()`: For debug output that should go to stderr
- **CREATE_VIEW warning** → `warnings.warn()` with `BiopythonParserWarning`: For user-facing warnings

### Changes Made
1. Added imports for `sys`, `warnings`, and `BiopythonParserWarning`
2. Replaced 5 debug print statements with `sys.stderr.write()`
3. Replaced CREATE_VIEW print with `warnings.warn()` using `BiopythonParserWarning`
4. Added a test case to verify the CREATE_VIEW warning is properly raised

### Motivation
This addresses the concern that print statements in library code are not appropriate for user-facing output. Using `warnings` module allows users to control warning behavior (suppress, filter, etc.) and `sys.stderr` is the proper destination for debug messages.


- [x]  I hereby agree to dual licence this and any previous contributions under both the Biopython License Agreement AND the BSD 3-Clause License.

- [x]  have read the CONTRIBUTING.rst file, have run pre-commit locally, and understand that continuous integration checks will be used to confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files NEWS.rst and CONTRIB.rst as part of this pull request, am listed already, or do not wish to be listed. (This acknowledgement is optional.)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `54a8eda89899`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.