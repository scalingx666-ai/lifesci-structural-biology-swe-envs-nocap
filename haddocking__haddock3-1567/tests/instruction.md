# Issue

**Title:** Add marimo scoring notebook and enhance interface-analysis notebook (configurable run dir, emscoring, config editor, stop control)

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [x] Does not break licensing
- [ ] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

- New cell defines a configurable working directory (defaults to cwd); run folders are created inside it instead of always in cwd
- Replace emref step with emscoring in the workflow
- Fix README edit-mode command (was duplicated as `marimo run`)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f517252ea8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.