# Issue

**Title:** check memory requirement in `contactmap`

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [ ] Does not break licensing
- [ ] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->
This PR adds a logic to check if the host machine has the necessary memory requirements to run `contactmap` and if it does not it skips the execution of the module.

 ⚠️ IMPORTANT ⚠️


To get the available memory of the system we are now using `psutil`, this means this is now a dependency of the project! https://pypi.org/project/psutil/ is a very stable and mature package and is the best way for us to get the available memory in different systems.

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1499

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

for prosperity: I tried to bypass calculating the matrix and adding a generation with on-the-fly calculation of the contacts, as this would avoid keeping things in memory. However changing this also needs a significant refactoring - basically a whole re-write of this module.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8072d15293d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.