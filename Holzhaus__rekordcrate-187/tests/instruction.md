# Issue

**Title:** Fill in a few more Track unknowns

## Description

Mostly doc comment adjustments to help folks down the line to interpret the unknown fields.

A few identified fields in Track strings:
* unknown_string1 - this is the Lyricist field, based on setting the field in Rekordbox
* message - this is indeed the "message" field in Rekordbox
* kvno_public - this is actually "Publish track information" in Rekordbox

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1386da2aa099`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.