# Issue

**Title:** Misc. fixes of two bugs regarding dragging tabs

## Description

Fixes two minor bugs found with dragging and droppping tabs.

1.Dragging a tab from a window with a single tab to an empty surface causes a panic

Steps to reproduce:
* dragging each tab from a dock state into a window
* drag one of the tabs out to create a second window
* take the single tab from the second window and put it into the empty surface

2.Dragging a tab and pressing new mouse buttons causes unintended behavior

Steps to reproduce:
* drag any tab
* press any secondary mouse button while dragging

both of these have been fixed by restricting drags to only be carried out by the primary mouse button and restructuring code to properly delete empty assets from the tree (unless they're explicitly meant to be like eg. an empty surface)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1de3979b0f74`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.