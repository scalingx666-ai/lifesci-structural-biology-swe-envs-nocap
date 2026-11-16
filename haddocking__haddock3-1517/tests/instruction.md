# Issue

**Title:** Enables separate control of molecules separation and random rotations

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [X] Tests added for the new code
- [ ] Documentation added for the code changes
- [X] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Added separate parameters to `rigidbody` and `flexref` that control the separation of molecules (`separate`) and random rotations around their respective center of masses (`randrot`).  These replace the old `randorien` parameter.

Default for both are true in rigidbody and false in flexref.

Also added a new example to illustrate it: `docking-protein-ligand-centered`

## Related Issue

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `525bc1ee0b8b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.