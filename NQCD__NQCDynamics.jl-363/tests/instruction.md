# Issue

**Title:** Fix CI and rename Temperature to TemperatureSetting

## Description

This was necessary as “Thermostat” is technically incorrect, and “Temperature” is already taken by Unitful, which is often imported along with NQCDynamics.

I also managed to accidentally nuke the CI tests by forgetting to rename `Thermostat` to `Temperature` everywhere, but this time it should work.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `efc115470354`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.