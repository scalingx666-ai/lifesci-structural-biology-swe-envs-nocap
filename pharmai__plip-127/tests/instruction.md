# Issue

**Title:** fixes salt bridge detection for nucleic acid receptors

## Description

This change fixes the issue of the salt bridge not getting detected when nucleic acids are treated as a part of the receptor.

On the receptor side, now it recognizes nucleic acid residues and looks for the negative charge in the phosphate backbone, which are possible candidates to form salt bridges.

Thank you.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `764591b4bf05`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.