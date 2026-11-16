# Issue

**Title:** Align: add substitution matrix support to Alignment.format()

## Description

This pull request extends the Alignment.format() functionality to support substitution matrices for pretty-printing alignments.

Summary of changes
	•	Extended Alignment.format() to accept either:
	•	an optional substitution matrix, or
	•	a PairwiseAligner object (using its substitution matrix).
	•	Updated all relevant helper functions accordingly.
	•	Added a new test file: Tests/test_format_matrix.py, which verifies pretty-print output under different substitution matrices (e.g. NUC.4.4, BLASTN-like).
	•	Confirmed that all Biopython unit tests pass locally.

Notes
	•	Default behavior remains unchanged (identities = |, positive matches = :, mismatches = ., gaps = -).
	•	Verified that lowercase residues are handled case-insensitively.
	•	Contributors listing updated in both NEWS.rst and CONTRIB.rst.

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

Closes #...

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d3de87886310`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.