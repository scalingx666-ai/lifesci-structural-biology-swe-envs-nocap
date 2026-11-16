# Issue

**Title:** FCI + Fix to DirectRHF

## Description

- Fixing recent issues with `DirectRHF`
- Included new `ConfigurationInteraction` module with a `FCI` code.
- Add tests for `fci`
- New notebook example used @ juliacon.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cff732a14371`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.