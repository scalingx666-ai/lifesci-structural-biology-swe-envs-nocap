# Issue

**Title:** Restore world-space ambient occlusion radius

## Description

## Summary
Ambient occlusion looked absent on the diffusion example. The earlier SSAO noise fix (#435) put N8AO in screen-pixel radius mode, where Atomify's radius of 10 spans less than one atom and the pass degrades to a faint edge detector. N8AO's AO-only debug view was almost pure white.

- Keep the occlusion radius in simulation units, so buried atoms stay dark however far the camera is. Verified against the example thumbnail look.
- Keep the detailed sampling (64 AO / 16 denoise): magnified crops show the grain from #65 is a sample-count problem, present only at the fast mode, not a radius problem.
- Ignore a persisted `ssaoRadius`/`ssaoIntensity` from the removed legacy slider, so a stale saved value cannot silently change the look now that the radius is honoured in world units.
- The SSAO e2e spec now perturbs the radius mode before each settings change so it proves the reset instead of N8AO's default, and drops the unread screenshots.

## Validation
- `npm run typecheck`, 485 unit tests, `e2e/ssao-quality.spec.ts` pass.
- Headless quick run of the diffusion example through the real code path: AO-only view shows clear depth structure; before it was near white.

## Follow-ups (out of scope)
- omovi renders the AO-off path without the sRGB output transform, so toggling AO also shifts brightness. That is an omovi bug.
- The 10-unit radius suits LJ and Å-scale examples; deriving it from the model size would make it robust for unusual scales.
- The fast quality mode still shows the #65 grain at this radius. It is the explicit lower-cost choice in Settings.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_01NMqBT1iPcu3ayt1QdXuWB1

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ad077a0e029`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.