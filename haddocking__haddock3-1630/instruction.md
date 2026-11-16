# Issue

**Title:** Add protein-glycan jupyter notebook

## Description

jupyter notebook for HADDOCK3-protein-glycan, i could not run the bonus part properly because the code to run glycan-mdref.cfg was giving an error

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

jupyter notebook for HADDOCK3 protein-glycan docking
new function in libnotebook.py to fit and display an ensemble of models

## How was this tested?

by running the notebook end to end

## AI assistance

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ec6dd60a2ebc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.