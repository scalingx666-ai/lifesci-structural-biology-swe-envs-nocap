# Issue

**Title:** Upstream TorchSim model interface

## Description

Hello, we think ts is getting to a fairly mature point now and we would like to encourge what we have called external model posture similar to ase (https://github.com/TorchSim/torch-sim/discussions/120) I have made this PR as a basic demo of what an external implementation might look like for SevenNet 

I made some basic changes to the CI to add linting and using uv for test env such that ts will resolve properly for > py312 whilst still pointing to the external model PR. Draft until that PR get's merged/0.5.2 release.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0c4c41f0f77a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.