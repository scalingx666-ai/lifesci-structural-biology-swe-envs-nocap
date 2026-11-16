# Issue

**Title:** Fix remaining flake8-docstrings D400, D401 and D402 issues.

## Description

Before:

```
❯ flake8 --statistics --isolated --select D40 Bio
Bio/Align/AlignInfo.py:20:1: D400 First line should end with a period
Bio/PDB/PDBIO.py:31:1: D400 First line should end with a period
Bio/PDB/PDBIO.py:31:1: D401 First line should be in imperative mood
Bio/SearchIO/InfernalIO/infernal_tab.py:212:1: D400 First line should end with a period
Bio/SeqIO/Interfaces.py:47:1: D402 First line should not be the function's "signature"
Bio/SeqIO/Interfaces.py:170:1: D402 First line should not be the function's "signature"
Bio/SeqIO/QualityIO.py:2484:1: D400 First line should end with a period
Bio/SeqRecord.py:372:1: D400 First line should end with a period
5     D400 First line should end with a period
1     D401 First line should be in imperative mood
2     D402 First line should not be the function's "signature"
```

It appears ruff does find these (other than the D402 cases look like false positives from a clumsy docstring), but why wasn't that enforced via our pre-commit setup?

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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `95ff2cbbc5f3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.