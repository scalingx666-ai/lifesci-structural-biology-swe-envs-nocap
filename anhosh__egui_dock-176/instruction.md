# Issue

**Title:** Fix for issue #174

## Description

fixes issue #174 by removing the use of ``Instant`` inside the drag/drop state. As methods like ``Instant::now()`` is not implemented for wasm. This has been replaced with ``egui::InputState::time`` instead.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37e9b5eb79cd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.