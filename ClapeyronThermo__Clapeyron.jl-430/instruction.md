# Issue

**Title:** Add more control over specifying parameters in electrolyte eos

## Description

This PR should allow better custom specification of electrolyte model parameters. There are three sets of parameters that can be specified:
1. The charges of each species. @longemen3000 can users specify charges as an array in this set-up?
2. ideal_userlocations
3. neutralmodel_userlocations
4. ionmodel_userlocations
5. RSPmodel_userlocations

The only annoying part I can anticipate is that some parameters (like sigma) overlap between the ionmodel and neutralmodel. Users might need to specify them twice.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2cb552966d0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.