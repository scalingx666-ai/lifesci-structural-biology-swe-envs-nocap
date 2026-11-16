# Issue

**Title:** replace espaloma graph build api with own implementation for faster speed

## Description

## Description

A follow-up on #502. Replace espaloma graph build api with our own implementation for faster speed. This version gains additional 2x speedup by skipping back-and-forth conversion between OpenFF mol and RDKit mol, skipping build & throwaway the homograph, avoiding many small tensors when creating atom feature vectors. Moving the calculation to GPU also brings a bit of extra speedup. Overall, ligand preparation is ~17x faster than before, tested on a 10k subset from Enamine library. 

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [x] Other (please describe): performance improvement

## Checklist:

Please go through the following checklist before submitting the PR: 

- [x] Written a description of the feature or bug fix above. 
- [ ] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [x] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Additional Information
This version's time efficiency matches that of the newer dedicated charge assignment package, `espaloma_charge`, which is published in JPCA in 2024, while this version still uses the espaloma model parameters from the 2023 paper in Chemical Sciences.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `df2f2d93c174`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.