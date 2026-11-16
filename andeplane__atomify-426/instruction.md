# Issue

**Title:** Keep simulation shortcuts out of text fields and dialogs

## Description

Typing a project name while the viewport is active could change simulation speed or pause the run. Ignore simulation shortcuts inside editable fields, interactive controls, and modal dialogs, and ignore modified, composing, repeated, or already-handled key events. Viewport shortcuts remain available; space no longer scrolls the page when toggling pause.

.

Validation: TypeScript check and all 471 tests pass, including 11 regression cases covering text entry, dialogs, modifier keys, composition, and viewport controls.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b68746bbfa24`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.