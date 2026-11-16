# Issue

**Title:** improved documentation and made fasta_align optional

## Description

…mputting one<!--- Please read each of the following items and confirm by replacing
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

 

In the following PR, I made the fasta_align parameter optional in the StructureAlignment class and also made it None by default. This means that the StructureAlignment class is still compatible with legacy code, but the new API allows to just pass in the two structure models (as either kwargs or by passing None as the first arg). Since this may be a bit confusing, I also updated the documentation, giving more context and also explaining how to use the API, and added type annotations to the __init__ of StructureAlignment to give better clues as to how it works.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `feeb7283cf6d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.