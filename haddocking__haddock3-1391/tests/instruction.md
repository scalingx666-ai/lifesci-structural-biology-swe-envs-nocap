# Issue

**Title:** add adaptative job concatenation to `mode=grid`

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

DOES NOT APPLY

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

This PR overhauls the `libgrid`, it adds an abstract class `GridInterface` that holds the "primitive" methods to interact with dirac. It also adds `CompositeGridJob` which is a representation of a batch grid payload.

The `GridScheduler` has been updated with a feature to "probe" how busy the grid is, it will check how long a specific payload spent in waiting and running, use this to calculate what would be the ideal number of executions that should be concatenated into a single payload to increase efficiency.

With these changes the `libgrid` becomes adaptative, reacting to the load on the grid network and with this addition we should be able to efficiently process a large volume of jobs. This feature is relevant to ofer haddock3 as a service via [wenmr.science.uu.nl/haddock3](https://wenmr.science.uu.nl/haddock3)

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->



## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `009b86545f61`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.