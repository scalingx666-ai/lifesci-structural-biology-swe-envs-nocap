# Issue

**Title:** ci: bump composite action to setup-python@v6.2.0 and setup-uv@v8.1.0

## Description

## Summary

The shared composite action `.github/actions/setup-uv-env/action.yml` was lagging the rest of the workflow stack. It pinned `actions/setup-python@v5` and `astral-sh/setup-uv@v5`, while `main.yml` was already on `actions/checkout@v6`, `codecov/codecov-action@v6`, and `actions/cache@v5`.

This bumps the composite to:
- `actions/setup-python@v6.2.0`
- `astral-sh/setup-uv@v8.1.0`

Patch versions pinned for reproducibility.

`setup-uv` jumps three majors (v5 → v8). v6 added improved cache, v7 changed cache-key behavior, v8 integrates Python install. End result for this repo: same `uv sync` semantics, slightly better cache hit rates.

## Test plan

- [ ] CI: full `Main` matrix passes on this branch (quality, tests-core 3.11/3.12, tests-ase, tests-train, tests-pysis, tests-hf, check-docs)
- [ ] Confirm cache behavior is unchanged (no cold installs blowing the timeout)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `682b6e341ded`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.