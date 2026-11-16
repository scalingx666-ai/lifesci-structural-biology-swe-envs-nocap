# Issue

**Title:** ci(security): mark pip-audit as continue-on-error (informational)

## Description

## Summary

One-line workflow fix: adds `continue-on-error: true` to the `pip-audit` job in `.github/workflows/security.yml` so it actually behaves as the *informational* check it was labeled as in #65.

## Why

The Security workflow was introduced in #65 with a commit message that explicitly labels CodeQL + pip-audit as **informational**, but the workflow file omits `continue-on-error: true` on the pip-audit step. Result: when `pip-audit` finds a CVE in the runner-installed `pip` (currently `pip 26.0.1` / CVE-2026-3219, no Fix Versions yet), the PR shows a red ✗ that:

- Is not in `branch protection → required_contexts` (so it doesn't actually block at the protection level), but
- Sets `mergeStateStatus: BLOCKED` in the GitHub UI, forcing every merge through `--admin` even when the failure has nothing to do with the PR's diff.

`pip` itself is the GitHub Actions runner's preinstalled binary, used to invoke `pip-audit`. It is not a project dependency and cannot be pinned via `pyproject.toml`. Until the upstream `pip` advisory ships a fix and the runner image picks it up, every PR that doesn't carry dependency changes is gated by an environmental finding.

## Test plan

- [x] PR's own CI: pip-audit will still find the same CVE, but the job will be marked passed (informational), and `mergeStateStatus` should not transition to BLOCKED on this PR.
- [ ] On the next unrelated PR after this lands, `mergeStateStatus` should reach `CLEAN` without `--admin`.

## Notes

- Advisories are still **logged** in the pip-audit job output for triage.
- The Tuesday cron run still executes the same pip-audit step, so periodic audit visibility is unchanged.
- CodeQL stays as it was (currently passing on `main` and on PRs); only pip-audit is relaxed.

Diff is the 6-line addition (1 line `continue-on-error: true` + 5 comment lines explaining why).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `314e05862c65`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.