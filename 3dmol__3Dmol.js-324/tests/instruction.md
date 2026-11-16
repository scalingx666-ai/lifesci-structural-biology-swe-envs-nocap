# Issue

**Title:** Bug Fixes for Viewer

## Description

Most of the issues involving the viewer should be fixed. Could you tell me if you see any unrecognized bugs?

Features/Fixes:

- Surfaces only render again when you change them
- Order is maintained
- A new canvas is not created every render
- Code refactoring 
- Buttons are hidden correctly when you click on the hamburger button
- Labels are rendered correctly now
- Duplicate selections are now valid and the latest one is now accepted
- all can now be used to select globals
- defaults work correctly now
- min and max now works for numbered input fields
- there are three buttons at the bottom now add label, add surface, and add style

Bugs:
- i tried jquery for spinners but the element would just be removed from the page so the spinners require that you move the mouse a little before you click again. Rapidly clicking on the spinner should not cause anything to delete.
- The side bar can be dragged out on accident due to jquery ui realizable

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e441f27bc3a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.