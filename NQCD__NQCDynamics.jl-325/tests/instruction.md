# Issue

**Title:** Update AdvancedMH.jl wrapper for Monte Carlo sampling.

## Description

_2nd attempt at a PR without merging in extra stuff as well_

 was caused due to a breaking change in how AdvancedMH.jl handles the init_params keyword. initial_params is now required instead. I've removed compatibility for lower versions of AdvancedMH.jl to be safe.

 Has a non-breaking change to the movement-related keywords. Using the old move_ratio and internal_ratio will now produce a warning. Old keywords could be removed entirely after some time.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d22b506cc09`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.