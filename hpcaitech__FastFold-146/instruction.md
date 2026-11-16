# Issue

**Title:** added relaxation argument to select whether to run the relax operation

## Description

For monomer, there is no significant difference between running relax and not running relax. For multimer, relax will take a long time. In summary, if you can select relax, it will be more convenient.
Added argument and not save the relaxed PDB by default.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4dc719f70f08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.