# Issue

**Title:** Correct row count fields

## Description

The field num_rows_small was incorrectly interpreted, and is actually a field that spans up to 13 bits. This is followed by 11 bits that count the number of valid rows, previously known as unknown3/unknown4.

Fixing this, it becomes apparent that the 13 bit row count is the full row count, and num_rows_large is not actually a row count at all. I renamed that field to clarify.

This code successfully reads (and passes the assert) all testdata I have which includes various exports made using rekordbox 7.0.3.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d421bd805a03`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.