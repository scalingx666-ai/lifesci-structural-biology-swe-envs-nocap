# Issue

**Title:** Accommodate new RDKit

## Description

Few things introduced by new RDKit, including one bugfix:

- Replace non-standard AA in test receptor to standard ones + adjust new test results
- Fix bug with checking if atom is in ring - current behavior is to include atoms in macromolecular ring in protein made by S-bridges, metal coordination etc. This might help with PLEC, need to check that; Current limit on ring size is up to 10 atoms in smallest ring to consider an atom to be a ring member in ECFP representation.
- Validate the zero-ordered metal coordination in new RDKit, currently monkey-patched them to single bonds - there is a problem with hydrogen atoms being added to residues coordinating these metal ions, which is probably not what we want to do. Need to validate how this impact our parsing stats from `RDKit-fixer`.

TODO:
- [x] Remove temporary tests, which helped debugging

Any other ideas?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4613cca48d4b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.