# Issue

**Title:** Corrected ranking in caprieval for reverse sorting - Issue #1621

## Description

## What does this PR do and why?

Corrected `libcapri.py` so that when `sort_ascending=false` the `caprieval_rank` reported in `capri_ss.tsv` match the actually sorting of the file

Added a test for this.

## How was this tested?

By running a test example from the docking-protein-protein example, adding `sort_ascending=false` to a caprieval module and check that the `caprieval_ranks` are matching the sort order.

## AI assistance

AI was used to add the test

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1621

## Notes for reviewers

Note that the reranking is only affecting the single structure analysis reported in `capri_ss.tsv`

Better not to change the reported `cluster_rank` in the `capri_clt.tsv` file as this rank corresponds to the cluster naming. In this case, the reverse sorting should be enabled directly in the `seletopclust` module (see issue #1620)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0d0852c18e12`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.