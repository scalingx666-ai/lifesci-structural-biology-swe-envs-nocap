# Issue

**Title:** Use particle color and radius attributes

## Description

Particle colors and radii now reach drawing and GPU picking through instance attributes instead of texture lookups. Radii retain float32 precision instead of being quantized to 1/255. Styles follow persistent atom IDs when LAMMPS reorders instances, and position-only frames leave style buffers unchanged.

A small adapter wraps omovi's shader compilation and picking material. It checks the expected upstream shader expressions explicitly; future incompatible omovi updates must update this boundary. Selection highlighting keeps its existing path.

.

Completed-run viewports bind attributes and restore styles from cached data when reopened, without waiting for a new timestep.

Validation: typecheck, 478 unit tests, production build, real-WebGL color pixels, off-center picking beyond the old texture radius, SSAO on/off plus camera movement, dynamic native radii, and reopening both atomic and bonded run-zero structures. Unit tests cover sparse IDs, reordering, precision, and avoiding unnecessary style-buffer updates. These checks establish the changed data path; they do not claim a hardware-independent FPS improvement.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aecf2aca9c3b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.