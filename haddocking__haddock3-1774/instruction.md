# Issue

**Title:** Check grid job status in one call per round, with a pause

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

In `mode=grid`, `wait_for_completion` queried DIRAC without any pause: every
round started one `dirac-wms-job-status` process per pending job and the next
round began as soon as they returned (#1766). For a run with a few hundred grid
jobs this queried the DIRAC server non-stop.

- **One call per round:** all pending job IDs are queried in a single
  `dirac-wms-job-status` call, as the HADDOCK2.5 poll daemon does, and each job's
  status is set from its line in the output. Jobs that DIRAC does not report keep
  their status until the next round; a failed call is logged as a warning.
- **Pause:** 30 s between rounds (`POLL_INTERVAL`).
- **Stalled, killed and deleted jobs** are handled as failed and resubmitted, like
  in HADDOCK2.5. Before, they became `UNKNOWN` and the run waited forever.

Also in this PR:

- **Duplicate files in the payload:** a toppar file the `.inp` refers to was
  added to `payload.zip` twice, so `unzip` asked whether to overwrite it and a
  `<jobid>_dirac.err` file was copied to the step folder even for successful jobs.
  Each file is now added once, and the warning filter for duplicate names is removed.
- **Default `JobType`:** `HADDOCK3_GRID_JOB_TYPE` now defaults to `WeNMR` (was
  `WeNMR-DEV`), the job type of the WeNMR services and their grid proxies.

## How was this tested?

- New unit tests: one status call for two jobs, with the 30 s pause and the
  sites parsed from the output (on main this test loops forever, as the status
  is checked inside `process_job`); `Stalled` gives `FAILED`; the payload holds
  each file once. The last two fail on main.
- Grid run on rascar (user `diracegi`) with the protein-protein test example and
  a wrapper logging every `dirac-wms-job-status` call: the run completed in 9:11
  (66 grid jobs). Waiting for the jobs took 15 polling rounds of one call each
  (up to 20 IDs per call), about every 30 s; the other 66 calls are the status
  check right after each submission. No `*_dirac.err` file was written and no
  `/tmp/haddock_grid_*` folder was left.

Not tested on the grid: stalled, killed or deleted jobs (none occurred).

## AI assistance

Claude Code wrote the code and tests and ran the grid test on rascar. I
reviewed the change.

## Checklist

- [x] Tests cover the new and/or changed code
- [x] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

User manual: haddocking/haddock3-user-manual#56

## Notes for reviewers

The default `JobType` change affects accounting of the haddock3 web service on
rascar, which does not set `HADDOCK3_GRID_JOB_TYPE`: its jobs will count as
`WeNMR` once a release with this change is deployed.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58d8478fa3c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.