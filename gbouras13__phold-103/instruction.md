# Issue

**Title:** Changes for GenBank

## Description

This PR builds further on gbouras13/pharokka#408:
- the anticodon qualifier got deleted because of #76 but I reintroduced it and added a warning that users will have to rerun their analysis with `pharokka` >=v1.8.2 if they want to submit their genomes to GenBank
- some other minor fixes
- added plugin to suvtk in README

Tests are running fine on my end btw.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `002b7294fbe8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.