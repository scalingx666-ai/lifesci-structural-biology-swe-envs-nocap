# Issue

**Title:** Adding support for glucosamine - issue #1559

## Description

## Checklist

- [X] Tests added for the new code
- [X] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

- Added topology and parameters for glucosamine, adding support for a new glycan to haddock3 (upon user request).
- Adapted the `bondglycans.cns` strict that generated the covalent links between glycans
- Added an example directory `refine-molecules` which can be used to test the functionality for any new types of molecules we add to haddock3
- Added end-to-end test based on the `refine-molecules` example

## Related Issue

#1559

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ae081e39e94b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.