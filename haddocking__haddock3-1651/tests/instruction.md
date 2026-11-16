# Issue

**Title:** Add workflow module ordering validation

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

HADDOCK3 validates that each workflow module and its parameters are valid, but it does **not** check whether the *sequence* of modules makes sense. Some modules only work when another ran before them, some must not be chained to themselves, and a workflow must start by building topologies. Until now, such mistakes only surfaced at run time (or produced meaningless results).

This PR adds a data-driven workflow ordering check. Constraints are declared in `src/haddock/gear/workflow_rules.yaml` and enforced by `src/haddock/gear/workflow_ordering.py`, so new rules can be added without touching the validation logic. Four rule types are supported:

- **`disallowed_sequences`** — a module may not directly follow another (e.g. `clustrmsd → clustrmsd`, `clustfcc → clustfcc`, `seletop → seletop`, `seletopclusts → seletopclusts`).
- **`required_preceding`** — a module must be *immediately* preceded by one of a set (`topocg` after `topoaa`; `clustrmsd` after `rmsdmatrix`/`ilrmsdmatrix`).
- **`required_prior`** — a module must appear *somewhere earlier* (`cgtoaa` requires `topoaa`).
- **`required_first`** — the first module must be one of a set (`topoaa`).

The check is wired into `setup_run()` and raises a single `ConfigurationError` listing **all** violations (with step numbers and allowed alternatives). It is skipped for `--extend-run`, whose config only describes the appended modules, so the full order is not known there.

The `plot-finetune-clustfcc.cfg` example was adjusted so its `clustfcc` steps are no longer directly consecutive, matching the `clustfcc → clustfcc` rule.

## How was this tested?

- New unit tests in `tests/test_gear_workflow_ordering.py` (**100% coverage** of `workflow_ordering.py`) covering each rule type, multi-violation reporting, empty workflows, and custom rules files.
- Ran the check against all 110 real example workflows: only the two `docking-extend-run-*.cfg` configs "fail" standalone, and those are exclusively run with `--extend-run` (where the check is skipped by design).
- `ruff format --check` and `ruff check` pass on changed files; `pytest tests/test_gear_workflow_ordering.py tests/test_gear_prepare_run.py` → 93 passed.

## AI assistance

Drafted with Claude Code and reviewed manually. Claude wrote the validation logic, YAML rules, tests, and docs; verified the behaviour by running the full test suite and cross-checking the rules against every example workflow in the repo. This is config/ordering validation only — no scoring, energy, restraint, or CNS/topology logic is involved.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) — code docs updated (`architecture.md`, docstrings); user-manual update still to do
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

Related to #1530.

## Notes for reviewers

- Rules live in `gear/workflow_rules.yaml` — reviewers should sanity-check the rule set for scientific correctness (e.g. whether any other module pairs should be disallowed/required).
- The user-manual (separate repo) is not yet updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1f54a9e53aa6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.