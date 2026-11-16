# Issue

**Title:** Preserve small Newick branch lengths

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)



This PR updates the default Newick branch length format from `%1.5f` to `%1.8g`.

The previous default could silently round small nonzero branch lengths to `0.00000` when writing Newick trees, which can lose biologically meaningful distance information. Using significant digits preserves small values such as `0.000001` while avoiding unnecessarily long fixed-width decimal output for all branch lengths.

Changes included:

- Update the default `format_branch_length` used by the Newick writer.
- Add regression coverage for small nonzero branch lengths.
- Update the expected Newick output for zero-length branches under the new default format.

Testing:

```bash
cd Tests
python -m pytest test_Phylo.py
python -m pre_commit run --files Bio/Phylo/NewickIO.py Tests/test_Phylo.py

Result:

39 passed, 1 warning
pre-commit passed

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ffffe49f7cc9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.