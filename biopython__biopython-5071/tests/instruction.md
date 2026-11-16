# Issue

**Title:** SnapGene: Filter out partial binding sites.

## Description

The "primers" packet within a SnapGene file may contain, for every primers, additional partial binding sites in addition to the full binding site.

We use the minimum values described in the `HybridizationParams` element to filter out any binding site that:

* has a matching length shorter than the minimum accepted matching length, or
* has a melting temperature lower than the minimum accepted melting temperature.

---

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

<!--- Briefly describe the changes included in this pull request below
 !--- starting with 'Closes #...' if appropriate --->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a31c3ef7481`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.