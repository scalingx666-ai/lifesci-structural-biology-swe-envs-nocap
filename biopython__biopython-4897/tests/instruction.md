# Issue

**Title:** setup.py: don't error on setuptools 75.3.0.post0

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Fix is too minor for inclusion in those lists.

The setuptools version packaged in [NixOS](https://nixos.org/) reports to be 75.3.0.post0. This breaks the check in setup.py. Check is fixed to only consider major.minor version.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `004ee913843d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.