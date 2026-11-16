# Issue

**Title:** clarify `libcluster.add_cluster_info` behaviour

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
<!-- Please explain what you did in this PR -->

The modules use `libclust.add_cluster_info` to append cluster data to a group of `PDBFile`s, however this functions does more things than its described in its docstring. Not only it will add the cluster data but it will also re-order it's output both by cluster ranking and model ranking within each cluster. This is the desired behaviour but it was not properly documented.

This PR changes the module description of both `clustfcc` and `clustrmsd` to make this clear and I also added type signatures to `libcluster.add_cluster_info` and a test since it was uncovered.

## How was this tested?
<!-- Explain how the changes were verified -->

Added new test

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. -->

None

## Checklist

- [x] Tests cover the new and/or changed code
- [x] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- ~[ ] `CHANGELOG.md` updated for user-facing changes~

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

#1650

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work -->

It a bit messy because of the re-formatting, the important commits were these:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `85248c9c290d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.