# Issue

**Title:** Press P to switch left-drag between rotate and pan

## Description

<!-- claude-projects-attribution: {"github_login":"andeplane"} -->
_Requested by **Anders Hafreager** · [project thread](https://claude.ai/code/project/chan_01G7VSoPZwxUhEt8N3Ft8nF9?thread=cmsg_01G7VSoPZwxUhEt8N3Ft8nF9Pywr46zeLgPABfk6rjQTj9)_

Before: in the 3D view, left-drag always rotated and right-drag was the only way to pan, so trackpad users and people whose browser or extensions take over the right button couldn't pan.

After: pressing `P` in the live run viewport switches left-drag between rotate and pan. In pan mode a small "Pan mode · press P to rotate" label shows in the bottom-left and the cursor becomes a move cursor. Right-drag still pans in both modes, and click and Shift+click atom selection work as before. Leaving the live viewport turns pan mode off, so it can't get stuck on a screen where `P` doesn't work.

How: omovi only listens for `mousedown` on the canvas and has no API to remap buttons. While pan mode is on, `src/utils/leftDragPan.ts` stops a left-button mousedown in the capture phase and re-dispatches it as a right-button mousedown with the same coordinates and modifiers, so nothing in omovi changes. Pan mode lives in the render store and isn't persisted. The `P` shortcut sits in `Simulation.tsx` under the same `app.liveViewportVisible` gate as Space and `c` (ignored in inputs or with Ctrl/Meta/Alt), and a sibling effect resets pan mode when that gate closes. Unit tests cover the remap, store, shortcut and reset; a new e2e spec (`e2e/pan-mode.spec.ts`, not part of the smoke suite because it imports the store) checks that left-drag rotates by default, pans after `P`, that Shift+click selection still works in pan mode, and that `P` switches back.

Known limitation: on a finished "view structure" run the viewport isn't the live view, so `P` does nothing there, same as Space and `c` today.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_01HB39E3Y4jpon2ijSXT7emN

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cfd9d120167a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.