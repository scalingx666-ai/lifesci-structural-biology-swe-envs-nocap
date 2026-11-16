# Issue

**Title:** Make the coarse-graining deterministic and fix the dummy-bead geometry

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

Makes the coarse-graining path reproducible, and fixes the bead geometry it produces along the way (simplification/optimisation of libaa2cg)

**1. `libaa2cg.martinize()` was non-deterministic.** `add_dummy()` placed the `SCD*` dummy beads along a direction drawn from the *global* `random` module, which is never seeded. Two runs on the same input therefore produced different CG models.

`martinize()` now takes a `seed` and uses a dedicated `random.Random(seed)` instead of the global stream, so it can no longer be perturbed by whatever else drew a random number first in the same interpreter. `topocg` passes its own `iniseed` (from `defaults.yaml`) down through `generate_topology()`; the default in `libaa2cg` is kept in sync with it for the callers that have no `iniseed` of their own (`caprieval`, `caprifilter`). This also gives `topocg`'s `iniseed` an actual effect — its CNS recipe has no stochastic step, so until now the parameter was inert.

**2. `cgtoaa` ignored the seed it was given.** `prepare_cns_input` writes `evaluate ($seed=...)` into every `.inp`, and `cgtoaa/__init__.py` varies it per replica (`iniseed + s_ind`), but `cgtoaa.cns` never ran `set seed` — unlike every other CNS module. It runs `maxwell` + `dynamics cartesian`, so CNS fell back to its own default and every replica retraced the same trajectory: `sampling_factor > 1` burned CPU for identical models. Added the missing `set seed $seed end`.

**3. Dummy-bead distances were in nm, not Å.** `add_dummy` used `dist=0.11` / `0.14`, i.e. the MARTINI native unit, while HADDOCK/CNS works in Å. The minimisation was correcting this. Now it is correct from the start.

**4. Direction sampling was biased.** The direction came from normalising a vector drawn uniformly from a cube, which concentrates towards the cube's corners. Replaced with a Gaussian vector, which is isotropic under normalisation.

**5. A pair of dummy beads was not symmetric about its parent.** The `m = 1; ...; m *= -2` idiom reused the loop variable, so the second bead landed at `-2d` rather than `-d`. The pair now straddles the parent bead.

**6. `extract_groups()` read `a[0][1]` where it meant `a[1][1]`**, so both segids came from the same side of the pair. Dead code today (no callers), fixed rather than left as a trap.

Also adds `examples/refine-complex/refine-complex-CG-test.cfg` exercising `topocg` → `cgtoaa` with `sampling_factor = 5`. This example is similar to the protocol used in the Lightdock/HADDOCK membrane docking paper to refine the lightdock models

## How was this tested?

`ruff check` clean; `pytest tests/` → 1699 passed, 8 skipped.

New regression tests in `tests/test_module_topocg.py`:
- `martinize` is reproducible across calls, and *changes* with a different seed (the atoms that differ are exactly `{SCD1, SCD2}`)
- `martinize` leaves the global `random` stream untouched, and is independent of the order in which molecules are processed
- `topocg._run()` actually forwards `self.params["iniseed"]` to `generate_topology`
- `add_dummy` distances match the `SCd` force-field equilibria
- `add_dummy` directions are isotropic

`tests/test_cns_seeding.py` is new and generic: it walks the module registry and asserts that any module whose CNS recipes contain `maxwell`, `dynamics` or `random()` also runs `set seed` somewhere. `cgtoaa` was the only module failing it.

Running twice the new example r`efine-complex-CG-test.cfg` results in exactly the same models at the end of the workflow. Fully reproducible.

## AI assistance

Claude Code was used to trace the source of the non-determinism, to write the fixes and the regression tests, and to draft this description which was manually edited. 

## Checklist

- [x] Tests cover the new and/or changed code
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

Issue #1657

## Notes for reviewers

- **CG models change.** The dummy beads move from 0.11/0.14 nm-as-Å to their proper 1.1/1.4 Å, so this is not a bit-identical refactor — CG coordinates and any downstream scores shift. That is the point of the fix, but it is worth being aware of when comparing against older runs.
- **Possible knock-on effect in `topocg/cns/generate-topology.cns:240`**: the `if ($bonded > 10000)` guard that triggers an extra minimisation may no longer fire. The dummy beads sitting ~10× too close to their parent were plausibly the dominant bonded-energy term, and with the geometry corrected the initial bonded energy should drop sharply. Worth a look from someone who knows what that threshold was calibrated against.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4796a83f159b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.