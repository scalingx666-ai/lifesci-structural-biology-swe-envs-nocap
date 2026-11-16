# Issue

**Title:** Corrected verbose level to use all instead of verbose

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

The correct CNS setting is `all` and not `verbose` as remarked by @AnnaKravchenko 

Corrected in all relevant CNS scripts

## Related Issue

#1446

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `996e72c13fc2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.