# Issue

**Title:** Hanna ChemBERT fix

## Description

Deviations between the original HANNA model (python) and ClapeyronHANNA originated from a slightly different activation function in Transformers.jl / NNlib.jl. This was fixed in  and  (see below). This PR updates the model and the tests.  
![deviations_new](https://github.com/user-attachments/assets/2d414645-2102-41e3-b2a2-a2df90b86eb9)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6bcc3eb849e9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.