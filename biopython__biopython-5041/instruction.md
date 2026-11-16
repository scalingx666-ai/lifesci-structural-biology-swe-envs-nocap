# Issue

**Title:** pairwisealigner pickle fix

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

 

This change fixes a symmetry issue with alignment using pickled version of the PairwiseAlginer - the epsilon property was missing and thus resulted in differing alignments using the unpickled object. Adds a test for a specific query that is sensitive to the issue, in addition to assertions against the algorithm property (for future proofing).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4ceee03dbfc3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.