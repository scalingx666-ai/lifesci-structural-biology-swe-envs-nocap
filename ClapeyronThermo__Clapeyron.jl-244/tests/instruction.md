# Issue

**Title:** CPA revamp

## Description

- unifies sCPA and CPA by using just a symbol to select rdf
- allows Pc to be optional, so you only pass `(a,b,c1,Tc)` for non-assoc and `(n_H,n_e,epsilon_assoc,bondvol)` as additional parameters for assoc
- looking at the literature, there is a split on passing `epsilon_assoc` as energy parameters or as temperature parameters (`ϵ_ab/R`). we now support both, via passing `epsilon_assoc_over_R`.
addresses #239, solves #242

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af6570049a5e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.