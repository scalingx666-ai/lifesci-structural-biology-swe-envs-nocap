# Issue

**Title:** Fix Colab: Install all conda packages together

## Description

@gahdritz @christinaflo Could you please also merge this one? Shortly before you merged my #308 (thanks!), it became insufficient.
This one makes Colab work by installing all the conda packages before pip gets a chance to mess with our special conda setup.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f9270cbfa01`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.