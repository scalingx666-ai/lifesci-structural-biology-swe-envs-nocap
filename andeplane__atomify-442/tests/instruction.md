# Issue

**Title:** Fix examples broken on current LAMMPS; add example smoke test

## Description

Before: several bundled examples fail on current LAMMPS (removed `compute_modify` keywords, an unmatched quote in `benzene`), unterminated ReaxFF output can swallow the group-inspection marker, and nothing checks that the example library actually runs.

After: those example scripts are fixed, the worker matches the group marker as a line suffix (`splitGroupReady`), and `npm run test:examples` runs all 53 examples against the real lammps.js wasm build exactly as the app drives them.

This PR does **not** bump lammps.js; main stays on 1.5.1. The `fix pour` examples (`pour_2d`, `pour_2d_molecule`, `pour_3d`, `granular_patterns`) still fail with "Cannot yet use fix pour with the KOKKOS package" until lammps.js 1.6.x is published and bumped in a follow-up.

## How
- `deposit_atom`, `deposit_molecule` and the 3 pour scripts: `dynamic yes extra 0` → `dynamic/dof` / `extra/dof`.
- `benzene`: reworded a `print` with an apostrophe.
- `src/utils/lammpsGroups.ts`: `splitGroupReady` plus a unit test; used by `src/wasm/lammps.worker.ts`.
- `src/examples.smoke.ts` + `vitest.examples.config.mts`: the smoke test (not part of the regular `vitest run`).

## Testing
- Typecheck, unit tests, lint and prettier pass locally (also checked against vitest 5 / eslint 10).
- `npm run test:examples` on lammps.js 1.5.1: only the 4 `fix pour` examples fail.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

https://claude.ai/code/session_019ZnTFmiih3xq95b7ioCPY7

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fc092361573f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.