# Issue

**Title:** update uniref30db to 2202

## Description

Update the default UniRef database to [uniref30_2202.tar.gz](https://wwwuser.gwdg.de/~compbiol/colabfold/uniref30_2202.tar.gz) for local `colabfold_search`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16a09e13c946`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.