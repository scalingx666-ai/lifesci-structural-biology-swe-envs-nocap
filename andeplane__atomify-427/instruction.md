# Issue

**Title:** Restore the SSAO toggle and cover disabled rendering

## Description

The current renderer works with SSAO disabled, but the new Settings screen omitted its toggle. Restore Ambient occlusion (SSAO) in Rendering settings and add a real Chromium/WebGL regression test that runs LAMMPS, toggles SSAO off/on/off, checks visible model pixels, and verifies camera movement still updates the image.

.

Validation: TypeScript check; the new browser test passes (21 seconds). Also manually inspected screenshots with SSAO enabled and disabled. No renderer rewrite was necessary for the original report.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b68746bbfa24`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.