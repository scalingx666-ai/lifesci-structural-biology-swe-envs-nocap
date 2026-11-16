# Issue

**Title:** chore(ci): remove the Codecov integration

## Description

No coverage upload has ever succeeded on this repository.

Codecov's API reports it as `active: false`, `activated: false`, `totals: null`, last touched 2024-11-01, and its commits endpoint returns zero. Every run logs `Token required - not valid tokenless upload`, eight times, once per upload attempt.

Three things kept that invisible:

- `codecov/codecov-action` defaults to `fail_ci_if_error: false`, so a rejected upload logs an error and the job still passes.
- A separate `validate-codecov-config` workflow passes on every push, which looks like Codecov health but only POSTs `codecov.yaml` to a validation endpoint.
- `codecov.yaml` disables both the project and patch status checks, so nothing ever gated a pull request on data that was not arriving.

Meanwhile the README badge has been publicly rendering "unknown" since it was added.

Reviving it rather than removing it would need more than a workflow edit: tokenless upload is derived from a pull request head label, so it cannot work on pushes to `main` regardless of settings, and the repository would have to be activated on the service by hand.

This removes the seven upload steps, `codecov.yaml`, the `validate-codecov-config` workflow, and the badge. `validate-codecov-config` is not among the eight required status checks, so branch protection is unaffected.

One loose end left deliberately: the test jobs still run `--cov --cov-config=pyproject.toml --cov-report=xml`, so they still pay for coverage instrumentation and write a `coverage.xml` nothing reads. Stripping those flags changes test timing, so I left it as a separate call.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b6272a808a40`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.