# Issue

**Title:** ci: add Security workflow (CodeQL + pip-audit, informational)

## Description

## Summary

Wave 4 of post-audit follow-ups. Adds proactive security scanning beyond what Dependabot alerts surface.

New `.github/workflows/security.yml` with two independent jobs:

- **codeql**: GitHub CodeQL static analysis on Python with the `security-extended` query suite. Runs on push to main, every PR, and a Tuesday-morning cron. Findings populate the repository Security tab.
- **pip-audit**: scans the `uv sync`-resolved environment for CVEs in pinned dependencies. `--skip-editable` ignores the local aimnet package itself (it's not published).

## Informational, not blocking

Per your decision, neither job is added to branch protection's required-checks list. The PR UI will show pass/fail but won't gate the merge button.

## Heads-up on the first pip-audit run

`pip-audit` currently flags **pip 26.0.1** (CVE-2026-3219). This is a transitive dep brought in by the `setup-uv-env` composite action, not something pinned in `pyproject.toml`. It's pre-existing — surfaced for the first time by this scan. Worth a follow-up triage:

- (a) bump the pip in the runner via an extra `pip install --upgrade pip` step
- (b) `--ignore-vuln CVE-2026-3219` if the impact is judged low
- (c) accept the red status until a patched pip lands

Decide separately; not gating this PR.

## Test plan

- [x] `make check` (ruff, prettier, deptry) — green
- [x] `uv run --with pip-audit pip-audit --skip-editable` — runs to completion, exit 1 on the pip CVE (expected)
- [ ] CI: codeql + pip-audit jobs run successfully (codeql green; pip-audit red on the pip CVE — expected, informational)
- [ ] CI: existing required checks (quality, tests-core matrix, etc.) still green

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `50c1bd7a8fa8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.