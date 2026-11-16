# Issue

**Title:** StyleBuilder::from_egui, multiple dock IDs, Tree::find_active_focused

## Description

<img width="957" alt="image" src="https://user-images.githubusercontent.com/10081540/191049695-289284f0-fc16-4251-94e8-6484828469d7.png">


Currently I am making extensive use of `egui_dock` in my application, but I found that it was missing several features that would have improved my quality of life vastly. This is a PR with 3 of such improvements:
* `StyleBuilder::from_egui` - Initializes the inner `Style` of `StyleBuilder` through `Style::from_egui`.
* Having multiple Docks, even with different `id`s caused clashes in the id space (even if I used `ui.push_id`). This change makes the  id sources of several elements factor in the Dock's own `id` to prevent clashes.
  * Pictured above is two separate docks :)
* `Tree::find_active_focused` - The tree exposed `find_active`, but it did not expose the same funcitonality when there are potentially multiple splits. This change introduces `find_active_focused` to do exactly that.

They are small enough that I put them in a single PR, but let me know if you would like me to split them.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ca93d4940f2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.