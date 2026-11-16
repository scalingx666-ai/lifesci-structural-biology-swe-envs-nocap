# Issue

**Title:** Fixing biopython compatibility issue by reverting to 1.81

## Description

The existing version of the OmegaFold notebook on the ColabFold repository doesn't work because of compatibility issues with biopython. Reverting to biopython 1.81 during installation fixes the issue. The maintainers would have to update the link to the colab notebook, so that this change can be reflected for those trying to run this on Google Colab.

The original line:
``%shell pip -q install py3Dmol biopython``
is updated to:
``%shell pip -q install py3Dmol biopython``
in the installation block of the OmegaFold notebook located at ColabFold/beta/omegafold.ipynb

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `57b220e02861`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.