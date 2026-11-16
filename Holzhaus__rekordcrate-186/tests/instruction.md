# Issue

**Title:** Add track file type

## Description

The first "offset" of a Track is actually the file type: WAV/MP3/etc. I deduced the enum values from the num_rows test data as well as the analysis done for @kimtore's rex project: https://github.com/kimtore/rex/blob/github/pkg/rekordbox/track/track.go#L47-L53

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f6f8b39f1b2c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.