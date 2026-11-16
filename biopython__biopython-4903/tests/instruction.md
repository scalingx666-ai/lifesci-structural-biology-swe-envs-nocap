# Issue

**Title:** Make appveyor use conda-forge while updating

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

This should fix the issue that was causing us to use conda's `defaults` channels again. They seem to have changed the `channels` list to include all of the URLs in the defaults channels instead of having just `defaults` which is what broke the previous code. It appears that the only place that we are actually using conda's defaults channels is in `conda update conda`. The package installations should be using pip and pypi.  Therefore the easiest fix seems to be to add arguments to force `update` to use conda-forge instead of the paid `defaults` channels. 

Note: Adding `defaults` to `denylist_channels` as shown in anaconda's docs actually seems to just break conda.

Context commit:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3696d28d36d3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.