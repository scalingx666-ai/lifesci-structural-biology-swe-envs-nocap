# Issue

**Title:** Render per-atom LAMMPS radii

## Description

Sphere-style atoms now use the engine's per-atom radius in simulation length units, including radii that change during a run. The particle-size control multiplies those native radii. Atomic styles keep their existing type-based sizes, and property coloring does not overwrite native radii.

The worker reads the documented radius flag and atom variable through private variables defined before execution, transfers radii with each particle snapshot, and excludes its internal variables from analysis. No LAMMPS commands are issued inside timestep callbacks.

.

Validation: typecheck, 475 unit tests, production build, real-engine dynamic sphere radii (`fix adapt`), and atomic/full-bonded data viewer regressions. The modifier test also verifies radii follow persistent IDs after array reordering and respect the size multiplier. Radius textures currently quantize to 1/255; their replacement is handled separately in #62.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1eeb7dacccb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.