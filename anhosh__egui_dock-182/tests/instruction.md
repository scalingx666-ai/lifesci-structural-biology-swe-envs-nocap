# Issue

**Title:** Fix typo

## Description

Slightly embarrassing one. :sweat_smile: 

Renamed `OverlayStyle::selection_storke_width` to `OverlayStyle::selection_stroke_width`.

I hope I'm publishing this one soon enough not to affect too many users with the breaking change.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f8c6e6b3860e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.