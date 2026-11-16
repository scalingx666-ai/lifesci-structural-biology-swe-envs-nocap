# Issue

**Title:** fix readthedocs build

## Description

Minor fixes to make the build on readthedocs work

 * add `.readthedocs.yaml` configuration file 
 * fix range of sphinx version (=the reason it was crashing)
 * move docs-only dependencies from `requirements.txt` to "extra"

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3fcc9fa289c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.