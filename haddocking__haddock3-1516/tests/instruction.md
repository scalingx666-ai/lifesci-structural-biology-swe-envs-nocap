# Issue

**Title:** increased allowed simluation steps in openmm

## Description

## Checklist

- [X] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Increase maximum allowed number of simulation steps in `[openmm]` to 10 million.
This allows to generate trajectories for up to 20 ns (2fs timesteps).

## Related Issue

https://ask.bioexcel.eu/t/haddock3-user-manual-issue/6072


## Additional Info

Spotted on the BioExcel forum by community user

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c5c7520bc7b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.