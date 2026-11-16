# Issue

**Title:** fallback to `Scheduler` if the GRID is not available on runtime

## Description

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [x] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual) -> 
- [x] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  
<!-- Describe what changes were made to the code, what was added, removed, etc. -->

This PR adds a fallback to `get_engine` to check if the GRID connection is possible before returning `GRIDScheduler`. 

The fallback logic is to call `libgrid.ping_dirac` that will check if the necessary commands are available in the PATH and also run `dirac-proxy-info` that will return a non-zero code if the connection has not been made.

The behavior is then: if an user sets `mode=grid` but the grid is not available, it will use the local processors instead of the grid, inhering whatever `ncores` was defined in the configuration file and also display a warning in the logs.

The check will be done per-module, so it should capture the scenario in which one module can finish with the grid but for some reason it becomes unavailable, the following will then use the multiprocessing scheduler. This should give is a higher execution fault tolerance.

## Related Issue
<!-- If this PR is related to an issue, please link it here -->
<!-- If this PR is related to the haddock3 user manual, please link the PR here -->

#1472

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `556e6b6a62a6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.