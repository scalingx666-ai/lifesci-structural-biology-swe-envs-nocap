# Issue

**Title:** Dashed bonds for bond order < 1

## Description

- Builds on #639 and #368
- Uses dashed lines for bond orders < 1. Some tweaks were made to the prior calculation method to try and get a more homogenous "dashed line" appearance while dealing with fixed atom positions.
- There may be some additional issues with the code; for example, the colors do not appear to be correct, although in a dashed bond, I think making them all default to gray would be better.
- Would be great to expand this implementation to support partial bond orders like 1.5, where one bond is solid and one is dashed.

For example, we could override the color argument, e.g. `color = new $3Dmol.Color(0xC8C8C8);`

Sample SDF file:

```
Molecule005
  Mrv1903 01162316393D

  6  5  0  0  0  0            999 V2000
    0.4761    0.1839   -0.9563 H   0  0  0  0  0  0  0  0  0  0  0  0
    0.1475   -0.2251    0.0075 C   0  0  0  0  0  0  0  0  0  0  0  0
   -0.8612   -0.6549    0.0499 H   0  0  0  0  0  0  0  0  0  0  0  0
    0.5167    0.2726    0.9131 H   0  0  0  0  0  0  0  0  0  0  0  0
    1.3194   -2.0204    0.0676 Cl  0  0  0  0  0  0  0  0  0  0  0  0
   -1.5985    2.4439   -0.0818 Br  0  0  0  0  0  0  0  0  0  0  0  0
  1  2  8  0  0  0  0
  2  4  8  0  0  0  0
  2  3  8  0  0  0  0
  2  6  0.5  0  0  0  0
  2  5  0.03  0  0  0  0
M  END
>  <anyBondsFromCoords>
true

$$$$

```

<img width="1007" alt="Screen Shot 2023-02-01 at 12 41 11 PM" src="https://user-images.githubusercontent.com/7200365/216141196-a4a0f7b1-e419-4e4c-9376-a424a6be2a92.png">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b03407b16095`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.