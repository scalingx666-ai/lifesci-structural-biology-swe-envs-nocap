# Issue

**Title:** Improve Node management

## Description

Looking into `Tree` structure, I found the method `remove_empty_leaf` which:
 - Didn't seem like something useful for external users
 - Was always used in contexts where we knew the actual `NodeIndex` that could be removed, causing a useless linear search.
 
So I removed the function and replaced it with the more useful `remove_leaf` function.
I also removed a bit of duplicated code regarding tab removal.

To simplify a bit the `DockArea::show_inside` I extracted the tab moving logic inside the `Tree` structure as the `Tree::move_tab` function.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `646cd63f1f01`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.