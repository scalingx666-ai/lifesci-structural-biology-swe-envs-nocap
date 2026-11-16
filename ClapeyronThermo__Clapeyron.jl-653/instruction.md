# Issue

**Title:** Fe-ANN-Mie and Fe-ANN(s)-Mie potential

## Description

the weights are from https://github.com/gustavochm/Square-Peg-Mie/tree/main (updates from their respective papers). what is missing is implementing the solid support for the second one; i need some appropriate initial points for the solid phase volume and a correlation for the triple point, but that can come in another commit.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4f18f16be063`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.