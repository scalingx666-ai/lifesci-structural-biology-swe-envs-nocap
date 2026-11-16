# Issue

**Title:** Implementation of polar SAFT-VR Mie

## Description

Addition of the Gross and Vrabec dipole (2006), quadrupole (2005), and dipole-quadrupole (2008) terms to the SAFT-VR Mie framework as implemented by Cripwell et al. (2018) and Smith et al. (2020).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62a3da4a69b9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.