# Issue

**Title:** Add structureclusterupdate workflow

## Description

This PR adds `structureclusterupdate`, an incremental update workflow for
structural cluster databases. Given an existing cluster database and a new
(larger) sequence database containing additional structures, it efficiently
updates the cluster assignments without re-running a full clustering from
scratch.

## Approach

Uses `diffseqdbs` to partition sequences into three groups by integer key:
- **mappingSeqs** — sequences present in both old and new DB: cluster
  representatives are remapped to new key space via `renamedbkeys`
- **newSeqs** — sequences only in new DB: searched against existing cluster
  representatives with structural alignment (`structurealign`), then assigned
  or seeded into new clusters
- **removedSeqs** — sequences only in old DB: pruned from cluster assignments
  (or re-appended with new keys when `RECOVER_DELETED=1`)

All prefiltering uses the 3Di alphabet (`--seed-sub-mat aa:3di.out`) and
alignment uses `structurealign`, so the update is fully structure-based
throughout.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `718d42176d2f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.