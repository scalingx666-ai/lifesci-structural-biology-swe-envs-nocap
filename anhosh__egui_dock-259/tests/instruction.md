# Issue

**Title:** Update egui to 0.31

## Description

Things seems to work, but I've never used egui or this crate until today, but I needed a version that works with egui 0.31 so here we are...

* compilation errors 'fixed' - mostly due to changes for the missing stroke kind on rectangles, I used 'StrokeKind::Inside' everywhere.
* all 'deprecated' warnings removed.
* tests pass
* examples run
* changes formatted using `cargo fmt`.

Most of the changes are relating to CornerRadius changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `951a656dea3f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.