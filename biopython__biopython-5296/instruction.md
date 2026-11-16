# Issue

**Title:** Add Windows ARM64 build

## Description

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

As the title says.

I have added Windows ARM64 to the build and test matrices. Note that setup-python only has WoA builds starting from 3.11 so the matrices reflect that.

Additionally, there was a test that was failing on Windows (all architectures) because it was hard-coded to LF line endings, and the `.gitattributes` in this repo configured .txt files to have CRLF endings on checkout. I have made a minor change there so that the test does not depend on the line ending at all, and it now passes on all platforms. Hopefully adding that to the same PR is fine; let me know if not.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fd37319b4bd2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.