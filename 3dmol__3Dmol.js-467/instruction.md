# Issue

**Title:** Fix boolean operator in selections to enable using them with `within`

## Description

Fix #371 using `GLModel.selectedAtoms` to get the set of matching atom for each individual sub-selection, and `atom.serial` to uniquely identify atoms when merging the sub-selections. Let me know if there is a better way to implement this (maybe directly inside of `selectedAtoms`?)

I am not sure how I can add tests for this. The linked issue refers to files in `tests/auto`, and these seems to do visual comparison of the results. My issue is that these tests don't pass on my browser (Firefox 80 on macOS 10.14.6, Intel integrated GPU), so I don't know how to make sure the test I add will work. I manually checked that this works fine for my simple use case (adding the central atom to the within selection), but I'm happy to add more tests.

----

Regarding code style, I used `let` instead of `var` to get proper variable scoping, which should be universally supported nowadays (https://caniuse.com/#feat=let). Let me know if that's an issue, I can try to make it work with `var` instead.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9cc89cd97c1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.