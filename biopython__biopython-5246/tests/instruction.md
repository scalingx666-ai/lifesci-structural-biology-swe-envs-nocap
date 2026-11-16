# Issue

**Title:** Guard Tree.collapse() against children without branch lengths

## Description

- [ x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [ x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->



Tree.collapse() added the removed node's branch length to each child with child.branch_length += extra_length, which raised TypeError when a child had branch_length None (cladograms / trees parsed without branch lengths). Mirror the guard already used in the sibling prune() method.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `158b2f2acfa9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.