# Issue

**Title:** Fixed traceback when running caprieval with multimodel reference pdb

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
This fix made cli_traceback skip caprieval and caprifilter on top of topoaa, that is also skipped.  

Also fixed usage docstring, as haddock3-traceback does not use `-r` 

## How was this tested?
On a run with caprieval with multref pdb.  for more details. Also added test for this edge case. 

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. -->

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues
#1737

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work -->
ruff format added lots of canges, so it's easier to look at individual commits.
Main fix is here:  
New test is here:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6f0d591cb964`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.