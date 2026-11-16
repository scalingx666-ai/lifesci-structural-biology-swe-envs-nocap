# Issue

**Title:** Figures path registry

## Description

As mentioned in issue #97. Figures are been added to the path registry. They will be saved into the files/figures directory.
So far I've made the appropriate changes to plot tools, rmds tools and rgy tools. As those are the ones in main as of now.

I still need to test, and add unit testing at the path registry for the new functionalities so don't panic @SamCox822

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `982372f3790c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.