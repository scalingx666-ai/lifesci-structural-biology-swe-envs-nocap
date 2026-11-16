# Issue

**Title:** Update makeRelease.sh

## Description

Hi,
A small update of makeRelease.sh.

The current bioSyntax-0.1.beta4.zip contains a ".git" folder and other .git* stuffs, which is not very good and need to be repacked without them for the Debian package.

It could be useful to convert this script to a more conventional makefile with dist and clean targets for example.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f8e6f08524e4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.