# Issue

**Title:** assign espaloma charges to single atom molecules

## Description

Assigning charges to ions caused trouble because it's impossible to create an espaloma graph with just one atom. The error was thrown by espaloma. In this PR, if the molecule has one atom, its espaloma charge will be the formal charge.

Also moved two methods specific to Gasteiger charges from `RDKitMoleculeSetup` to `rdkitutils.py`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f2556c9949a0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.