# Issue

**Title:** --cache_templates for mk_prepare_receptor.py

## Description

This is an alternate to #209. Instead of caching CIF files (which are not really useful for other functions in Meeko), the encoded residue chem templates will be cached.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5727d7f7e741`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.