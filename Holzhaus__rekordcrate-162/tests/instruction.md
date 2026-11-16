# Issue

**Title:** fix(pdb): get track_page test closer to passing

## Description

Still needs some work to properly calculate the offsets at the end of the page, in order to pass the test.
[#development > export to rekordbox USB format @ 💬](https://mixxx.zulipchat.com/#narrow/channel/109171-development/topic/export.20to.20rekordbox.20USB.20format/near/536974521)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8f8fe482f11a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.