# Issue

**Title:** Use the timestep parameter in mdref and mdscoring

## Description

## What does this PR do and why?

`mdref` and `mdscoring` expose `timestep` (default 0.002, range 0.0005–0.004, group `sampling`) and copy it into
`$saprotocol.timestep` / `$refine.timestep` in the CNS scripts, but all three `dynamics cartesian` blocks (heat,
sampling, cool) hardcode `timest=0.002{ps}`, so the parameter has no effect. This passes the variable to `timest`
instead. Six one-token changes across the two scripts, plus a CHANGELOG line.

The issue asks whether the hardcoded value is intentional. Since the parameter is documented, range-checked and
explicitly evaluated in both scripts, I took the hardcoding as a leftover. If 0.002 is meant to be fixed, the
alternative is to remove `timestep` from both `defaults.yaml` files — happy to switch to that.

## How was this tested?

CNS 1.3, `2oob` golden complex, seed 42, heat/sample/cool shortened to 20/50/20 steps, `nemsteps=20`:

- Before: `timestep=0.002` and `timestep=0.0005` produce byte-identical `mdref_1.pdb` and `mdscoring_1.pdb`, even
  though the CNS log shows `$TIMESTEP set to 0.5E-03`.
- After: the default run is byte-identical to the previous default run (no change for anyone using 0.002); the
  0.0005 run differs from the default (0.33 Å RMSD over 1135 atoms in mdref; different coordinates in mdscoring).
- `pytest integration_tests/test_mdref.py integration_tests/test_mdscoring.py`: 5 passed.

## AI assistance

Claude Fable 5.1 was used to patch the fix

## Checklist

- [ ] Tests cover the new and/or changed code (no new test; a two-timestep comparison could be added to `integration_tests/test_mdref.py` if wanted)
- [ ] Documentation updated if needed — the user-manual entry for `timestep` already describes the parameter as effective; no change needed unless the parameter is removed instead
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

Default behaviour is unchanged; only users who set `timestep` to a non-default value will see different trajectories,
which is what the parameter promises.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8370527f0d4c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.