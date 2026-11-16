# Issue

**Title:** xds2mtz: New option --batchmin to delete batches with BATCH<BATCHMIN Default 1.

## Description

Hi Marcin, please pull this branch. It adds a new option to xds2mtz:

  --batchmin=BATCHMIN      Delete reflections with BATCH<BATCHMIN (default: 1)

It sometimes happens that a few reflections have a negative Z-value. This gives rise to BATCHES with a value of zero or lower. 
Downstream programs can have problems with this.

By default pointless does the same.

Regards,
ClAuS

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7137548f6ed0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.