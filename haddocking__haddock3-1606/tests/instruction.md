# Issue

**Title:** Added support for 1-O-methyl-2-N-Acetyl-alpha-D-glucopyranose

## Description

## What does this PR do and why?

Adds support for a new glycan type:  1-O-methyl-2-N-Acetyl-alpha-D-glucopyranose  (NAA)

Cleaned a bit the `carbohydrates.top` file to remove commented out parameter entries.

Added integration test, and example.

## How was this tested?

Added the molecule with some missing atoms to the `examples/refine-molecules` example and checked the workflow runs properly, building the missing atoms and not complaining about missing parameters.

## AI assistance

N/A

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1593

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `11a531f17935`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.