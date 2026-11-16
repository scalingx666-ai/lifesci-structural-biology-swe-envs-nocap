# Issue

**Title:** Fix hover_pos on touch screens

## Description

Makes the dock work on mobile devices with wasm.  

I was not sure where to put the assignment of the `state.hover_pos`. I ended up putting it inside the `show_leaf` function.
If there is a better place, please feel free to tell me where.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `567bf55cf074`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.