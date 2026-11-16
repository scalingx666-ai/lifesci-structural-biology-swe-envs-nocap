# Issue

**Title:** Adds (original) UNIFAC 2.0 and modified UNIFAC 2.0

## Description

- adds (original) UNIFAC 2.0 from [this paper](https://www.sciencedirect.com/science/article/pii/S1385894724101581?via%3Dihub) as `ogUNIFAC2`
- adds modified UNIFAC 2.0 from [this paper](https://arxiv.org/abs/2412.12962) as `UNIFAC2`
-  
- modified name of subgroup 73 (`HCON(CH2)2` to `HCON(..`) in `ogUNIFAC_like.csv` to be consistent with the `ogUNIFAC.._unlike.csv` files (`HCON(..` is also the "official" label) -> this might also be changed in `GCIdentifier.jl` (which only gives `HCON(CH2)2`, should I open an issue there with an example?)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `32f49fd2f988`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.