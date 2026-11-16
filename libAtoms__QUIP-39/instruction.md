# Issue

**Title:** Makefile will submodule init if fox is missing

## Description

With this change, running `make` will attempt to run `git submodule update --init src/fox` if it finds that fox is missing. It should be clearer than the current failure mechanism that just says there is a missing file.

I'm putting this as a pull request in case people think that it is too much magic and that we should just issue a warning to run the command manually instead?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `66c8e2ba437e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.