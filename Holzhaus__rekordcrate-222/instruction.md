# Issue

**Title:** Add bitfield for PageIndex

## Description

Improve ergonomics of page flags by defining a bitfield instead of a raw u8.

There are two fairly obvious flags:
* bit 4 marks data pages that contain a deleted row
* bit 6 marks index pages

The others are unknown but appear to always be the same in all databases I've seen so I've commented them appropriately.

Documentation in crate digger:

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `507cac9e0b58`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.