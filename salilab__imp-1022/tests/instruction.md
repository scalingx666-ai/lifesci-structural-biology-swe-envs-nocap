# Issue

**Title:** Improvements to Weight

## Description

This PR implements the changes detailed in #1018.

It also makes some changes to how Weights are setup. In most cases, changing the number of weights during scoring function evaluation would break the restraints that use `Weight`. Moreover, the previous implementation added all weight keys up to the maximum number to the particle, even if the desired dimension was much lower. That makes increasing the maximum number of weights allowed (currently 20) unattractive, but 20 as a maximum is quite low. In the future, the user would create a `Weight` with a dimension or initial weight vector. If the user needs to increase the number of weights, they would create a new `Weight`. The old way still works but is deprecated.

For thoroughness, the documentation and method names no longer mention states, since weights are quite general and aren't tied to multi-state modeling.

PMI will need some updates based on these changes, but that will be handled separately.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `05f305565979`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.