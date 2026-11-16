# Issue

**Title:** CLI parameters for the -g and -w options did not output to .pka out file

## Description

I was trying to get more granular free energy and protein charge output in the .pka file. However, passing in different parameters to the -g and -w CLI parameters did not modify the out .pka file. 

I made changes in the source code to address this and solved some floating point rounding issues along the way (used the decimal library). 

All tests passed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `68007f065c54`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.