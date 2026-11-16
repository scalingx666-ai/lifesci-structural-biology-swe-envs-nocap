# Issue

**Title:** Add option to expand tabs to fill tab bar

## Description

.

I added an option to Style and added a checkbox to the `hello` example to demonstrate its use.

For #43, the calculation of `expanded_width` in `lib.rs` will need tweaking to subtract the width of the add-tab button from the available width, which should be painless. If that gets merged first I can update this PR as appropriate.

![image](https://user-images.githubusercontent.com/47219/193158328-0068cfc1-daf0-4189-85b5-dffed862373d.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f87ec393f823`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.