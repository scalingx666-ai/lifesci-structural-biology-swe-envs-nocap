# Issue

**Title:** RHF Updated

## Description

Changes to RHF including

- Several new dispatches with different combinations of data. 

- A dispatch that can use an RHF wavefunction as a starting point to a new RHF job! I think this can be very useful to converge SCF in the future, or just speed up convergence. 

Additionally:

- Docummentation (`?help`) added to `Integrals.jl`

- Dependencies updated! It has been complaining about MPI... Hopefully, it has been successfully added now.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `808b656fdc2c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.