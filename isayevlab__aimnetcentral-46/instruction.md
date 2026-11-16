# Issue

**Title:** Add TorchSim calculator

## Description

This PR adds support for using AimNet2 as a model in [TorchSim](https://github.com/torchsim/torch-sim). TorchSim enables automatic batching support for single point, geometry optimization, and molecular dynamics simulations. Tests were added for the additional calculator. Additional examples were added to support the new interface.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `96fc533a869f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.