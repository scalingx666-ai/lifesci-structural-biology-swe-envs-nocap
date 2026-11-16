# Issue

**Title:** Hypnopump/orthgonal6andt

## Description

* Fixes a previously introduced mistake of an extra arg in a function
* Makes LBFGS converge faster with a higher LR as 6 & T are orthogonal in the tangent space. 
<img width="573" alt="Captura de Pantalla 2023-09-13 a las 11 27 50" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/65e00aee-4fcc-4ac3-88ed-5baf466f33b3">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b640dda4397f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.