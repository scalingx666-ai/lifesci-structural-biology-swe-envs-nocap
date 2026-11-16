# Issue

**Title:** Reduce SSAO noise and expose quality control

## Description

Ambient occlusion now uses a screen-pixel neighborhood and more sampling/denoising by default, reducing the visible stippling from the previous 10-world-unit, medium-quality pass. Settings offers Detailed and Faster quality modes and persists the choice; existing saved settings default to Detailed.

.

Validation: typecheck, 472 unit tests, production build, real-WebGL quality/settings persistence, SSAO toggling and camera movement. Inspected matching before/after viewport captures: the detailed pass visibly smooths the grain. Detailed uses 64 AO / 16 denoising samples; Faster retains 16 / 8 for a lower GPU cost. The omovi 0.25 compatibility helper keeps access to its currently private N8AO settings in one place.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1eeb7dacccb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.