# Issue

**Title:** HADDOCK3 basic protein-dna notebook

## Description

jupyter notebook for HADDOCK3 basic protein-DNA docking tutorial

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
<!-- Please explain what you did in this PR --> I wrote a jupyter notebook for the HADDOCK3 basic protein-dna docking tutorial

## How was this tested?
<!-- Explain how the changes were verified --> I showed the final version to Prof. Bonvin

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. -->  I used AI for the visualisation of docking modeling code and for the HADDOCK score visualisation plot code.

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work --> contactmap and alascan modules are needed to be added to the archive in the tutorial website

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5b73f0b102c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.