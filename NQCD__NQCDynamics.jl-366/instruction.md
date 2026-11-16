# Issue

**Title:** 🚑️ Thermostat fix

## Description

I did a stupid and merged #349 mid renaming `Thermostat`s to `TemperatureSetting`s. This means v0.15.0 doesn't load as there are still references to the old names.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `642dcba5443c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.