# Issue

**Title:** Generate generic SAFTgammaParam and hence model compatability with AD

## Description

Implements changes in issue 

And exposes method for `SAFTgammaMie(::GroupParam, ::Dict{String,ClapeyronParam)` from discussion https://github.com/ClapeyronThermo/Clapeyron.jl/discussions/352

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f23e0dff7745`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.