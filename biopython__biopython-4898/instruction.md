# Issue

**Title:** Rework doctest to avoid numpy 2.2 shape in repr

## Description

With this minor change, the doctest will work on older numpy and numpy 2.2 as well (where the array __repr__ includes shape information by default). This addresses just one of the numpy 2.2 failures first noted on #4897.

This also fixed the over indentation of the PCA docstring, and switched to the standard 'import numpy as np' idiom.

Note this fix does expose the ``np.True_`` detail - you might have another idea @mdehoon?

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `004ee913843d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.