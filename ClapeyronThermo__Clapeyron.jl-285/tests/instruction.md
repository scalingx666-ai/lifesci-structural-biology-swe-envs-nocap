# Issue

**Title:** Spinodals

## Description

- new functions `spinodal_pressure` and `spinodal_temperature`
- validated with Ref. https://doi.org/10.1016/j.fluid.2017.04.009
[validation.jl.txt](https://github.com/user-attachments/files/16486965/validation.jl.txt)
![Fig_1](https://github.com/user-attachments/assets/bf80b87f-e3aa-408a-9372-f533ad7daef1)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cf96c68c902f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.