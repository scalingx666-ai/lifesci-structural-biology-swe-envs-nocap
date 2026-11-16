# Issue

**Title:** Use fixed models-per-job for `mode=grid` instead of probing the grid

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

In `mode=grid`, the number of models packed into one DIRAC job now comes from a
fixed table in `libs/libgrid.py`: rigidbody 10, and 2 for all other CNS modules.
It is not a user parameter.

The probing step (a first round of single-model jobs used to compute the batch
size for a 90% "efficiency") is removed. All jobs of a step are submitted at
once, so a step takes about the longest waiting time plus the compute time of
one job. The probing gave each job about 9 × the waiting time of computing, and
added one extra waiting round per step.

- `MODELS_PER_JOB` table; the module is read from the step folder name
  (`<step>_<module>`), since the `MODULE` path is just `cns` with
  `self_contained = true`.
- `GRIDScheduler` builds the batches directly from the CNS jobs. This no longer
  creates one temporary folder per model.
- Removed `probe_grid_efficiency`, `calculate_optimal_batch_size` and the `Tag` enum.
- A step with a single CNS job no longer crashes (#1767).

## How was this tested?

- New unit test: 21 rigidbody jobs give batches of 10/10/1, and a single flexref
  job gives one batch. On main the same test fails, the single-job case with the
  `IndexError` from #1767.
- `pytest tests/`: 2370 passed (on the first commit; the second commit only
  changes the table values).
- Grid runs on rascar (user `diracegi`, DIRAC 8.0.50) with the protein-protein
  example (rigidbody 1000 models, flexref/emref 200):

  | rigidbody / flexref / emref | Total |
  |---|---|
  | main, probing | 46:24 |
  | 10 / 2 / 2 (this PR), two runs | 16:11, 15:26 |
  | 20 / 5 / 5, two runs | failed (), 19:51 |
  | 50 / 10 / 10 | 36:47 |
  | 100 / 20 / 20 | 58:51 |

  Step times are in #1768. The test installs had a 30 s pause between status
  checks (#1766) and an env variable to change the table; neither is in this PR.

Not tested: topocg, mdref, mdscoring, emscoring and cgtoaa on the grid, and
`self_contained = true` on the grid.

## AI assistance

Claude Code analysed the grid scheduler, wrote the code and tests, and ran the
grid tests on rascar. I reviewed the changes and chose the values from the grid
test results.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

Follow-up issues, not in this PR: #1765 (non-CNS modules should run locally in
grid mode), #1766 (status polling with no pause, one call for all job IDs),
#1769 (failed submissions are not retried). With smaller jobs a run makes more
submissions (about 300 for the test run), so #1769 matters more.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `29a37103bb46`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.