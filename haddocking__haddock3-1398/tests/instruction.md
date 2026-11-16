# Issue

**Title:** force download of cns linux binary if `arch!="x86_64-linux"`

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

DOES NOT APPLY

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

To use `mode=grid`, the CNS executable needs to be a linux one, given that the payloads will be delivered to linux machines via DIRAC.

However if you are using an architecture other than `x86_64-linux`, the setup will not have downloaded the linux binary.

This PR adds a `get_cns_executable` function to `libutil` to locate both the `cns_exec` and `cns_exec_linux` and changes the `setup.py` to download the linux CNS binary if the arch is not `x86_64-linux`

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1390 

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

needs

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e302b584b87c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.