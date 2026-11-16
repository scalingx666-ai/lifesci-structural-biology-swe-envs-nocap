# Issue

**Title:** There should be less bugs

## Description

I fixed a few instances of bugs. Defaults should work better now. Sortable has been implemented such that the user can move around things which changes the load order meaning that there are changes to what appears on the screen. I still need to fix the spinners as well as selection validation, which i think i will add into the specStrintToObject function, but i am not sure. Can you put this on the website so i can share it with the group?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `46c5fcf9df18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.