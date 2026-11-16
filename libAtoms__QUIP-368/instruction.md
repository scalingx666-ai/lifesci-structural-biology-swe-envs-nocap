# Issue

**Title:** Create CITATION.cff

## Description

See https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files for overview and format details.

This is intended to  provide a code citation which matches the 'long-term support' info in the GitHub README. There's no DOI since we haven't been archiving stable releases of the code to Zenodo, but we could do that in future. Also happy to add all other contributors of code to the author list if we want to do that.

@bernstei and @gabor1 please check your ORCID IDs are correct.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e2ca8928303`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.