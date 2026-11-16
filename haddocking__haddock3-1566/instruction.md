# Issue

**Title:** Adding a new marino-based interface analysis notebook

## Description

## Checklist

- [ ] Tests added for the new code
- [X] Documentation added for the code changes
- [X] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Added a new notebook based on marimo dedicated to interface analysis.
It allows to upload a complex and runs then:

- topoaa
- emref
- contactmap
- alascan

And visualises there results

## Related Issue

None

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `90a075d47810`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.