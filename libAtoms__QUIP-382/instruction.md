# Issue

**Title:** fix installation of quippy "executables" when doing "make install-quippy"

## Description

While the github actions wheel builder seems to be OK, actually running "make install-quippy" does not actually stage the compiled executables for md and vasp_driver, so the python entry points do not actually work.

Add md and vasp_driver to quippy/Makefile PROGRAMS so they are available to _local_ installer when creating wheel

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0172ac22b54f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.