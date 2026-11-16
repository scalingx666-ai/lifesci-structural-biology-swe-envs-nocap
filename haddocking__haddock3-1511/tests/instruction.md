# Issue

**Title:** Corrected automatic ion restraining in flexref - solves issue #1510

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Move the call to `restraint-ions.cns` after the the call to `read_data.cns` in the flexref module.

## Related Issue

#1510

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8ecc6ea2b670`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.