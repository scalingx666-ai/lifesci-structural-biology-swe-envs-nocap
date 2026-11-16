# Issue

**Title:** Fixes mistakes in waterbridge detection and filtering

## Description

During water bridge detection, the supplementary angle of omega (i.e. 180° - omega) instead of omega was calculated.
During filtering a globally ambiguous index instead of the original index from the pdb file was used to filter out donor atoms already participating in hydrogen bonds. Also during filtering the water bridges with angles closest to the ideal omega were discarded instead of the ones with the biggest difference.

This pull request fixes these issues. However, a closer look at hydrogen bond donors and acceptors in PLIP should be taken in the future as atoms (depending on the number of hydrogens they are bound to/the number of free electron pairs) can participate in hydrogen bonds multiple times and from what I see this is currently not considered consistently.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf04ce7a402a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.