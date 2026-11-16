# Issue

**Title:** View uploaded LAMMPS data files without running dynamics

## Description

Uploaded LAMMPS data files can now be opened with **View structure** from the Files list. The dialog detects annotated atom styles and lets the user choose the style and units. It generates a separate zero-step input using LAMMPS's reader and zero force styles, preserving the uploaded data and the project's designated script. The completed inspection remains interactive while its structure is loaded; saved runs retain their frame and log.

The worker now sends a final snapshot after successful execution because `run 0` does not fire the timestep callback. Errors during final capture propagate to the run result.

.

Validation: TypeScript check; 463 unit tests; real Chromium uploads of both atomic and bonded full-style data (atom counts, zero steps, original-file preservation, camera interaction); normal simulation/run-history browser regression; production build. The existing run test's stale startup-banner assertion was replaced with the atom-creation output that survives the per-run buffer reset. Monaco's CDN worker emitted a network warning during that test, but the complete run/history flow passed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a7e2f87ae05`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.