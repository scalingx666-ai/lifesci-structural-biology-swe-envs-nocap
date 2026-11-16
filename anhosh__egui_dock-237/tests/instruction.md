# Issue

**Title:** Different design: more compact windows and collapsing/closing control on each tab bar

## Description

. See the issue for a full discussion of this design.

Here's a list of technically missing features in this PR, but I'd like to hear some opinions before carrying on ;)

- [x] ~~Proper styling (especially rounding)~~
  - After careful checking of the design, this should be done on the user side.
- [x] Dragging tabs to an empty space on the main surface ( )
- [x] Dragging tabs to a collapsed `Leaf` ( )
- [x] Proper CHANGELOG ()
- [x] Update examples ()

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `179832dddbfd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.