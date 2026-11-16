# Issue

**Title:** fix:Fix python version usage in Dockerfile.

## Description

# Description
I wasn't able to build the current version of the Dockerfile and had to make the following changes to make it build correctly. 

I also removed the Entrypoint as people can easily call `boltzgen` when they execute the image but having an Entrypoint can often cause issues with other systems (this is just a suggestion though, can keep it in of course if you prefer that).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8deda18e6f29`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.