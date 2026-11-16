# Issue

**Title:** Update broken URL for Cubuk et al. supplementary data.

## Description

The previous data URL `https://aip.scitation.org/doi/suppl/10.1063/1.4990503/suppl_file/supplementary.zip` now seems to lead to an error page, so the notebook as checked in no longer runs.

This change updates the notebook to use the link from the current article page, https://pubs.aip.org/aip/jcp/article/147/2/024104/988620/Representations-in-neural-network-based-empirical. This returns a wrapper zip file containing a `Supplementary.zip` that seems to match the contents of the original `supplementary.zip`, in that with this change the rest of the notebook runs without error.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e107c26d877f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.