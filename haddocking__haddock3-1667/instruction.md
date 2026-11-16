# Issue

**Title:** Glycan notebook edits

## Description

Mostly minor: updated list of main modules; removed duplicated title "HADDOCK scores and their components”; removed sentnces like “now open this in PyMOL”, fixed few typos, some formatting, harnomised spelling of i-RMSD, l-RMSD and il-RMSD.

What’s more important is that I removed link to HADDOCK2.4 AIR description - added haddock3 user manual instead.
Same goes for list of supported molecules - now linking to haddock3 user manual. 

Lastly, pinned haddock3 verison to 2026.8.0.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4840f5a6bcf5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.