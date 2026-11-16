# Issue

**Title:** Contextmenu updates

## Description

This PR contains updates for Context Menu functionality:

1. Add support for context menu on Shapes
2. Fill out the stub for longtouch contextmenu activation
3. Add the mouseevent to the call to `userContextMenuHandler`
4. Suppress mouseup / touchend events after context menu (preventing `clickSelection` events, you may not agree with this change)
5. `testcontextmenu` test covering all of the above

Minor: Renamed `contextMenuEnabledAtoms` to `contextMenuEnabledObjects`

The test ended up being complicated, especially because glcheck looks at a single canvas, and also because there are differences in how glcheck and jest simulate the page. The test can definitely be improved or clarified, but it is working.

Also: the commit history for this isn't as clean as I would have preferred.  You may wish to do "Squash and Merge"
I can also clean it up if you prefer.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `83f7797d213d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.