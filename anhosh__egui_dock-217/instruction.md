# Issue

**Title:** Add tab filtering methods

## Description

I added the following methods to `DockState`, `Surface`, `Tree`, and `Node`:
- `filter_map_tabs`
- `filter_tabs`
- `retain_tabs`

All of which are consistent with `std`'s `Vec::retain` and `Iterator::{filter,filter_map}`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `67cf9943dc04`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.