# Issue

**Title:** Removing analysis steps on run restart

## Description

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [x] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [x] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

This PR solves the issue of not recomputing analyses when restarting a run.
Now, all analysis directories with number >= restart module id are removed, therefore triggering the analysis of downstream modules with restart settings.
Also removes the `traceback` folder to make sure it is recomputed

## Related Issue

#1495

## Additional Info
<!-- Any additional information that might be helpful, if applicable -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0531f00e5cad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.