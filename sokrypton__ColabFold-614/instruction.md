# Issue

**Title:** add environmental pairing feature

## Description

This introduces the environmental pairing strategy built upon SPIRE metagenomic database contig labels.
Addition of the database `spire_ctg10_2401_db` must be accompanied to run this feature properly.
My original intention was to set `--use-env-pairing 1` as a default parameter, however, I found it better to keep it zero until a proper establishment of this feature being made.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16536057f304`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.