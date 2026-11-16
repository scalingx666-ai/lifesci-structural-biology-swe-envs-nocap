# Issue

**Title:** avoid RangeError: Maximum call stack size exceeded when add click event to a long list of atoms

## Description

Hi,
At first his PR would not change anything. I encounter a rare issue that when I am trying to add clickable event to a long long list of atoms, I got this `RangeError: Maximum call stack size exceeded` error see below
![image](https://user-images.githubusercontent.com/102806/116183898-6c05b600-a6e4-11eb-9ad8-bf7a3cf7c88c.png)

by changing to a for loop instead of using array.apply seems fixes it.

ref: https://stackoverflow.com/questions/22123769/rangeerror-maximum-call-stack-size-exceeded-why

Thanks in advance for considering this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bb653fa0cc9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.