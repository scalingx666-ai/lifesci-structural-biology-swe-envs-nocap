# Issue

**Title:** fix: Plain Hotcues being rejected due to cuetype mismatch

## Description

Due to what is likely a typo, ANLZ files with plain (non-loop) hotcues are incorrectly rejected.
Found while investigating  See https://djl-analysis.deepsymmetry.org/rekordbox-export-analysis/anlz.html#extended-cue-list

> The first “non-header” field is type at byte 10 (labeled t in the diagram), and it specifies whether the entry records a simple position (if it has the value 1) or a loop (if it has the value 2).

--- 

Couldn't be bothered to set up a regression test right now

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5bc74c38a8a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.