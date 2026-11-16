# Issue

**Title:** Fix combining 'expand tabs' and 'show add tab button'

## Description

Currently if you enable expand-tabs and also show-add-tab-button the tabs expand into the space for the button, which also means their close button overlaps the add button. We discussed this a bit in #44 but because #45 was merged before #43 it didn't include the fix, which I've made here.

I added expand-tabs to the `tab_add` example so that it's easier to see how it works:

![image](https://user-images.githubusercontent.com/47219/200442128-6c4ddec5-b695-4b5c-af9e-4a08f0137ee6.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `645c621ec019`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.