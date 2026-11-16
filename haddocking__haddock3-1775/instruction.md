# Issue

**Title:** Run openmm and Prodigy modules locally in grid mode

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

With `mode = "grid"`, `openmm`, `prodigyligand` and `prodigyprotein` passed the
mode unchanged to `get_engine` and got a `GRIDScheduler`, which only handles CNS
jobs. The step failed with
`AttributeError: 'ProdigyJob' object has no attribute 'envvars'` (#1765).

These three modules now run their jobs locally when `mode = "grid"`, as the
analysis modules already do. Other modes are unchanged.

`ruff format` was applied to the three module files, as CI checks the format of
changed files: only indentation and closing brackets change, and one error
message string is joined on one line. `openmm/__init__.py` keeps its CRLF line
endings so the diff stays small.

## How was this tested?

- New test: each of the three modules, run with `mode = "grid"`, asks
  `get_engine` for `"local"`. It fails for all three on main.
- The existing prodigy and openmm tests pass.
- Grid run on rascar (user `diracegi`): `topoaa` then `prodigyprotein` on
  `e2a-hpr_1GGR.pdb` with `mode = "grid"`. On main, `prodigyprotein` failed with
  the `AttributeError` above; with this PR, `topoaa` ran on the grid and
  `prodigyprotein` ran locally and scored the complex (-6.61).

Not tested on the grid: `openmm` (OpenMM is not installed in the test setup)
and `prodigyligand`.

## AI assistance

Claude Code wrote the change and the test and ran the grid check on rascar. I
reviewed the change.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

With `mode = "batch"` these modules still get the `HPCScheduler`; this PR does
not change that.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7b97d8d1e24d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.