# Issue

**Title:** Remove the temporary folder of every grid job

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

In `mode=grid`, the `/tmp/haddock_grid_*` folder of every grid job was left
behind (#1771): about 300 folders, a few GB, per run of the protein-protein
example. On rascar, two days of grid tests left 2633 folders (17 GB).

- **Successful jobs:** `job.sh` removes the CNS `.out` log when CNS succeeds, but
  it is still listed in `expected_outputs`. `retrieve_output` copied the PDBs,
  then stopped with `FileNotFoundError` on the missing log; the error was lost
  in `executor.map` and `clean()` was never reached. Expected files that are not
  in the output sandbox are now skipped.
- **Given-up jobs:** a job that failed `MAX_RETRIES` times is now logged
  (`> Job ... failed 10 times, giving up <`) and its folder removed; before,
  nothing happened. A job whose last submission retry fails also has its
  folder removed before the error is raised.

## How was this tested?

- New unit tests: a sandbox without the CNS log is copied without error; a job
  at `MAX_RETRIES` that fails again, and a submission that fails again, both
  have their folder removed. Each fails on main.
- Grid run on rascar (user `diracegi`) with the protein-protein test example:
  the run completed (11:07, 66 grid jobs) and left 0 `haddock_grid_*` folders
  in `/tmp` (0 before the run; on main every job leaves one).

Not tested on the grid: the given-up paths (they need 10 failed retries).

## AI assistance

Claude Code found the cause, wrote the code and tests and ran the grid test on
rascar. I reviewed the change.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

The grid run used the first part of the fix only (successful jobs); the
given-up paths are covered by the unit test.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d3bc66cc1405`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.