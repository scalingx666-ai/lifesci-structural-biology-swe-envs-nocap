# Issue

**Title:** Include ranges in typing for resi `AtomSelectionSpec`

## Description

* Adds a literal type for a SelectionRange and adds it into the union type for `resi`
* Adds arrays as a valid type for `resi` as well

There are a couple other fields on `AtomSpec` that are also typed as number, but I'm not sure which ones we intentionally want to allow ranges for. I'm happy to update those too, this just happened to be the only one I'm looking at right onw

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8ff5337c1bd0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.