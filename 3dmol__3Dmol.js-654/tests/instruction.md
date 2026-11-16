# Issue

**Title:** glcartoons: Promote nucleic acid thickness value to baseThickness constant

## Description

We override these cartoon constants in our fork.  Putting the baseThickness with the others will make it easier to maintain.

For what it's worth, these are the values we use:
```
coilWidth        = 0.1;
helixSheetWidth  = 0.8;
nucleicAcidWidth = 1.2;
defaultThickness = 0.2;
baseThickness    = 0.2;
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4d275a2bbb06`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.