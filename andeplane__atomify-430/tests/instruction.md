# Issue

**Title:** Verify persistent atom tags through the current engine

## Description

The current engine already uses persistent LAMMPS atom tags: its particle snapshot reads `lammps_extract_atom(..., "id")`, which is the tag array, rather than a sorted array offset. Document that contract and add regression coverage through both the modifier and the real engine.

The unit test permutes atoms while checking that sparse tags remain paired with positions/types. The Chromium test uploads sparse-tag data, enables LAMMPS sorting every step, runs the real worker and checks the particle objects consumed by the renderer.

.

Validation: TypeScript check, modifier regression test, real-engine browser test (8.6 seconds). Engine source reviewed at https://github.com/andeplane/lammps.js/blob/master/cpp/lammpsweb/lammpsweb.cpp (buildParticleSnapshot).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0fd149dc339d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.