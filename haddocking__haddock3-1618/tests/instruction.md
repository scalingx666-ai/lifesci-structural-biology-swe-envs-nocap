# Issue

**Title:** Add choices to filter_by parameter of caprifilter module

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Add choices to the filter_by parameter of caprifilter module

When rendering in [workflow builder](https://github.com/i-VRESSE/workflow-builder) without choices it looks like
<img width="835" height="430" alt="wb-array-str" src="https://github.com/user-attachments/assets/b235ec0b-a6ce-4563-8b7f-272f27b5240f" />

with choices it looks like

<img width="851" height="233" alt="wb-multi-select" src="https://github.com/user-attachments/assets/13d09f98-15ca-429d-b4f0-9f241632c004" />

To see it in workflow builder yourself use PR 

## How was this tested?
1. I took screenshots above
2. I build sphinx docs and choices are rendered at http://localhost:8000/src/modules/analysis/haddock.modules.analysis.caprifilter.html#filter-by
3. Passed `pytest -v tests/test_modules_general.py::test_yaml_keys[modules7]`

## AI assistance
It only converted the valid values string into a yaml list, which I verified.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `139915313a28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.