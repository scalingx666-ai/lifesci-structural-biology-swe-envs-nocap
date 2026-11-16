# Issue

**Title:** compute rect sizes before drawing bodies

## Description

.

I moved computation of Rect sizes before drawing any part of the UI.

I though that the convention of how right/left children map to top/bottom was a bit blurry. So I made sure that:
 - left/right children are left/right node when drawn.
 - left/right children are top/bottom node when drawn.

I'm not sure how it was previously but I think it simplifies the code in `duplicate!`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `86104bc40dbc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.