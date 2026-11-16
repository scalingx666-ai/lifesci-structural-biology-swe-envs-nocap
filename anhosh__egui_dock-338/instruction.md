# Issue

**Title:** Dragging two perpendicular splitters at the same time

## Description

.

Dragging two perpendicular splitters ("junction") at the same time is now possible within the region defined by `SeparatorStyle::junction_merge_distance`

https://github.com/user-attachments/assets/a2d61219-6266-4e05-b016-eeb2248f26ce

This should also complete the missing four-way junction dragging leftover from #155. Unfortunately, that PR has been closed and #237 changed much of the related codebase.

The idea is that once a junction drag has started, no more members will be added along the way. The members within the active dragging junction are frozen until either the drag finishes, or the tree has changed so that the junction is no longer intact.

**This PR introduces breaking changes (by adding fields; see changelog) so it should be merged to a release branch, though I didn't find one for 0.22 for now. I'm happy to switch the base whenever @anhosh creates that branch!**

## AI Usage Disclosure and Vouching

I have previously contributed (a while ago!) at #237, so I should already be vouched.

Claude Code on Opus 5 (Effort Extra) has been used to quickly get me through the changes from  (where I was familar with) to HEAD, and generate code. I have reviewed every line of code generated and very often edited the output.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ff71dd0e0282`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.