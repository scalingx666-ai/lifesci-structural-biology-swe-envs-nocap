# Issue

**Title:** Adds support for 1-O-methyl-2-N-Acetyl-alpha-D-galactopyranose - issue #1608

## Description

## What does this PR do and why?

Adds support for 1-O-methyl-2-N-Acetyl-alpha-D-galactopyranose - called NGM in carbohydrates.top

Changes/additions:
 - added residue in `carbohydrates.top`
 - added integration test and golden data
 - added `gal-ngm.pdb` in `examples/refine-molecules`
 - updated `bondglycans.cns` in the `topoaa` module
 - added MAG to bondglycans.cns (was missing for proper linkage identification)

## How was this tested?

- Added gal-ngm.pdb which is missing the O1-methyl group and all substituents of the C4 atom (different chirality compared to glucopyranose
- 
- Tested that the missing atoms are properly built with the correct chirality and that the entire refine-molecules.cfg workflow completed without errors.

## AI assistance

N/A

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1608

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `503aedd4589e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.