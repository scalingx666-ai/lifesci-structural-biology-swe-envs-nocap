# Issue

**Title:** make tab bar default bg opaque, a bit darker than active tab

## Description

Proposed fix for #111, using the same color as `tabs.bg_fill`, only a little darker.

Dark Theme:
![image](https://user-images.githubusercontent.com/48593807/232162649-25438753-e81f-4222-bc93-1495982aa6e2.png)

Light Theme:
![image](https://user-images.githubusercontent.com/48593807/232162711-4bfa2b07-130c-4955-b44f-5d083f514632.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56ba8da49ed1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.