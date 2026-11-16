# Issue

**Title:** CLI fixes

## Description

- add a blocking `subprocess.run` instead of non-blockin `subprocess.Popen` - app needs to wait for the output files before proceeding
- unify logic for checking the mmseqs database 
- add an option to `overwrite` databases - impossible to capture process failure in mmseqs and foldcomp, rebuilding databases will help

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9469531a0875`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.