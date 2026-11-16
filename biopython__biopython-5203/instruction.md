# Issue

**Title:** Warn instead of error for invalid strand type in LOCUS line (issue #4…

## Description

…846)

When the LOCUS line does not have a valid strand type at the expected position (e.g. files exported by SnapGene), fall back to whitespace-based parsing and issue a BiopythonParserWarning instead of raising a ValueError. The fallback recovers locus name, size, molecule type, topology, division, and date when present.



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



Adds a whitespace-based fallback to the GenBank LOCUS line parser for the strand-type column check. Previously this raised ValueError on SnapGene-exported files; now it warns and continues, recovering name, size, molecule type, topology, division, and date. Tests added in Tests/test_GenBank_locus_spacing.py.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8dcaccb6b78a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.