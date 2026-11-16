# Issue

**Title:** bug fix in mmcif writing

## Description

- "_struct_conn."ccp4_link_id was missing
- con.name may be empty (should not?)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d07f0016bf7b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.