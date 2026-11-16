# Issue

**Title:** Retry failed grid job submissions

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

In `mode=grid`, a failed `dirac-wms-job-submit` is now retried instead of being
dropped. Before, the error was raised inside `executor.map` and lost, the job
stayed `STAGED` and was never computed, and the run stopped once the missing
output passed `tolerance` (#1769).

- `GridInterface.submit` retries a failed submission, counting towards the same
  `MAX_RETRIES = 10` as failed grid jobs (the job's `retries` counter).
- The pause starts at 30 s and doubles after each retry, up to 5 min
  (`SUBMIT_RETRY_DELAY`, `SUBMIT_RETRY_MAX_DELAY`), so 10 retries cover about
  37 minutes.
- Each retry logs a warning with DIRAC's message. After the last retry the error
  is logged and raised as before.

## How was this tested?

- New unit test: the submission fails twice with `Peer closed connection`, then
  succeeds; the job gets its DIRAC ID after 2 retries, with pauses of 30 and 60 s.
  It fails on main.
- Grid runs on rascar (user `diracegi`) with the protein-protein test example
  (rigidbody 200 models, flexref/emref 40), with a wrapper in front of
  `dirac-wms-job-submit` that fails the first submission of every job:
  - with a fixed 30 s pause: all 26 topoaa and rigidbody jobs recovered on the
    first retry. In flexref a real DIRAC error (`Cannot get URL for
    WorkloadManagement/SandboxStore ...`) lasted ~21 min, longer than the 10 × 30 s
    of retries, and 10 of 20 jobs were dropped. This led to the doubling pause.
  - with the doubling pause: all 66 jobs recovered on the first retry and the run
    completed (20:55). No real DIRAC error happened during this run.

Not tested on the grid: the longer pauses after the first retry, and a job that
uses up all 10 retries.

## AI assistance

Claude Code wrote the code and the test and ran the grid tests on rascar. I
reviewed the change and chose the doubling pause after the first grid test.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

A retry sleeps inside one of the `ncores` submission threads, so while DIRAC
refuses submissions the other jobs of the step wait to be submitted. Related:
#1766 (polling), #1771 (temporary folders left in `/tmp`).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c79bc2790ef1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.