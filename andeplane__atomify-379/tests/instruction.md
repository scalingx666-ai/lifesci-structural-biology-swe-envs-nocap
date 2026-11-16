# Issue

**Title:** Add Large diffusion example (250k atoms, KOKKOS)

## Description

Adds **Large diffusion** next to the Diffusion example: identical physics with `variable L equal 50.0` → **~250,000 LJ atoms**, running multithreaded via the `suffix kk` marker.

- Browser-verified: 250,000 atoms at **~59 timesteps/second** with `pair lj/cut/kk`, no errors, app healthy afterwards.
- Camera directives scaled with the box (×3.33), preserving the original Diffusion framing.
- `large_diffusion.png` is a **placeholder** (copy of the Diffusion image) — to be replaced with a real capture before/after merge.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7838d856563b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.