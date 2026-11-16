# Issue

**Title:** Fix distance-dependent viewport lighting

## Description

Large simulation coordinates could place atoms beyond the point light's 200-unit cutoff or attenuate their illumination. Disable distance falloff and the cutoff, and scale the existing intensity setting to retain useful brightness with unattenuated light.

.

Validation: typecheck, 461 unit tests, production build, and a real-WebGL regression comparing an equally sized sphere at distances 10 and 1000. The test first reproduces the old cutoff, then verifies consistent brightness with the new lighting. Also inspected the actual 256-atom viewport. This addresses distance-dependent illumination; ambient-occlusion quality is tracked separately in #65.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0fd149dc339d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.