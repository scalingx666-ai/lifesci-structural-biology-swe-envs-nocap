# Issue

**Title:** fix: do not uniquify SMARTS matches by default (for OpenFF compat)

## Description

The bug was discovered by inspecting water parameters, each hydrogen had different parameters. One H had TIP3P parameters, while the other had hydroxyl parameters. This happened because the OpenFF XML forcefield file specifies both hydrogens in the SMARTS, for example `[H:1]O[H]` but only the one with the ":1" label is parameterized. With `uniquify=True` (RDKit's default, in use before this PR) only one match is returned. By setting `uniquify=False`, RDKit returns two matches instead of one, in which each match labels a different H.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9829c4e9af7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.