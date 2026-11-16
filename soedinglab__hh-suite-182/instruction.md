# Issue

**Title:** A fix for HHfilter

## Description

There was a bug when there was no overlap between two sequences such as
```
>seq_0
AAAA----AAAA
>seq_1
----BBBB----
```
In this case, cov_kj=0 and diff=0, but diff_suff is non-zero. So, in this case, seq_1 is filtered out although there is no overlap between them.

The fix also can be 
`if (diff < diff_suff && float(diff) <= diff_min_frac * cov_kj && cov_kj > 0)`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8ba1bc85f9ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.