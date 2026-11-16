# Issue

**Title:** Hydrogens

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [X] Tests added for the new code
- [X] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Moved the `hydrogen_build` parameter from `generate_topology.cns` to `default.yaml` file in order to expose it as parameter to `topoaa` to control the way hydrogen atoms are (re)build.

## Related Issue

#1522

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2b7f347cb23`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.