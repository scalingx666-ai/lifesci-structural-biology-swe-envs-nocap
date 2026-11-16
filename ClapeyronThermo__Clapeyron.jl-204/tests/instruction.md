# Issue

**Title:** Update cosmosac

## Description

Added functionalities where, if COSMO-SAC parameters are not in the Clapeyron database, they will be looked up in the NIST/COSMOSAC database.

@ianhbell do you have any opposition to this? We can add the relevant references to the model to ensure both your database and the folks who built the database receive the appropriate recognition.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8996f68be6ba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.