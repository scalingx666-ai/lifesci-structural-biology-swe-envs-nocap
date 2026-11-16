# Issue

**Title:** Fix group name inconsistency for amides and sulfones

## Description

I have noticed a group name mismatch between the like and unlike parameter files for the amide and sulfone groups.
Corrected group names are now also consistent to other UNIFAC versions in Clapeyron.

Amides (changed in unlike file)
AM... --> CON...

Sulfones (changed in like file)
CH2SuCH2 --> (CH2)2SU
CH2SuCH --> CH2CHSU

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `47465ab1ab00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.