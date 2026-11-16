# Issue

**Title:** add meeko/data/params/* to MANIFEST.in

## Description

it appears that basic functionality isn't working with meeko installed from pip or conda, because the JSON files with the default atom types isn't being distributed

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `27a19259bf1c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.