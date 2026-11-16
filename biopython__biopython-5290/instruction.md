# Issue

**Title:** Pairwise aligner convenience functions

## Description

This PR adds an `align` and `score` function to `Bio.Align` as convenience functions.
These functions take `seqA`, `seqB`, and further arguments `*args` and `**kwargs` as input.
Using these arguments, these functions construct a `PairwiseAligner`, and runs the aligner on the `seqA` and `seqB` sequences.
The function obtains the mode and strand from the `**kwargs` if provided explicitly.
Otherwise, it will look for `"global"` or `"local"`, and `"+"` or `"-"`, in the `*args`, and set the mode and strand accordingly, defaulting to `"global"` and `"+"` if not provided.

While these functions are inefficient compared to creating a `PairwiseAligner` first and applying it to many sequences, they provide an interface similar to `Bio.pairwise2`, and may help users to transition from `Bio.pairwise2`.

Let's hear from users if there are any comments or suggestions, before merging this.

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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62f837129299`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.