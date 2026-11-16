# Issue

**Title:** Fix QCPSuperimposer bug

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

 

- The Newton-Raphson method within the QCP algorithm stopped early if value of `mxEigenV` was at any point smaller than the old value. Added absolute value between the difference to fix this.
- Added two new test cases for QCPSuperimposer with points along two lines of slightly different lengths and oriented differently. One test checks that the results is the same between QCPSuperimposer and SVDSuperimposer and other checks the RMSD value from the QCP algorithm and compares it to the value calculated from the transformed coordinates. The old code fails both tests and new passes them.
- Modified the CEAligner tests since the hardcoded RMS values were now wrong. Mostly this reverted and old change, so these new ones seem to be correct. Also double checked by substituting the SVDSuperimposer into CEAligner and got the same answer.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `11728693973f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.