# Issue

**Title:** Update docstrings in PAML modules

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

This PR aims to address the issues with PAML docstrings highlighted in .

It builds on the changes in #1793, and incorporates the work of @funcylambda in #1824 and @farAtGitHub in #2489 in a way that strives to address the feedback to their respective pull requests.

Changes include:
- elaboration of docstrings in PAML modules, to include descriptions (as appropriate) of what is done, what is returned, and what triggers an exception;
- case and formatting updates, with PAML classes in camel case (e.g. `Codeml`), PAML software in all caps (e.g. `CODEML`), and PAML commands in reStructuredText inline code formatting (e.g. ``codeml``);
- an update to the `CONTRIB.rst` file.

I've used all caps for PAML software names, partly because this would result in fewer changes to the code than using an all-lowercase convention, and partly because this is the convention used in recent PAML-related papers (e.g. [Yang 2007](https://doi.org/10.1093/molbev/msm088) ; [Xu & Yang 2013](https://doi.org/10.1093/molbev/mst179) ; [Álvarez-Carretero, Kapli & Yang 2023](https://doi.org/10.1093/molbev/msad041)). That said, I'm happy to adjust this if necessary.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6851cd8d0319`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.