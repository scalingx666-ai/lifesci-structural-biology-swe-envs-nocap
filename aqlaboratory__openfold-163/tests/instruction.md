# Issue

**Title:** Support openmm >= 7.6

## Description

These are minimal changes to support more modern versions of openmm, essentially accounting for the deprecated "simtk" namespace. In particular, the "internal" namespace is unsupported in these versions.

Note that the deepmind patch has already been incorporated into openmm 7.6.

We have been running predictions with these newer versions (and in general with a more modern environment) and results seem correct. So eventually it would be useful to relax version pins of dependencies, so openfold can more easily be installed as a library.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `04fd6d346f31`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.