# Issue

**Title:** Patel-Teja: use correlation first

## Description

Before, we used the experimental critical volumes first, then the correlation if no critical volume is available. the original paper does clarify that the critical compressibility factors are fitted, so we should consider that and do not directly query Vc.

It renames the `Vc` field of `PatelTejaParam` to `Vc_fit` and adds the `acentricfactor` field. 

should fix #524

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1cc56baa1e78`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.