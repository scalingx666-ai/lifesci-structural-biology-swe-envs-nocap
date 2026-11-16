# Issue

**Title:** Fixes for correlation models

## Description

I found some bugs in the fluid correlation models:
- calculation of Δh_vap did not work for CompositeModel
- `volume_virial` gave 0 for B>0 (is there a general reason, besides model validity?)
- some smaller indice bugs etc.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c533b020d53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.