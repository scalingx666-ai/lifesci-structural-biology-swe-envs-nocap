# Issue

**Title:** added `moles_positivity` for `Real` inputs

## Description

Hello,

Here I add another dispatch for `moles_positivity` for when input is non-vector. In ref to #457.

The following will work in this PR:

```julia
julia> using Clapeyron

julia> mod_H2O_pr = PR(["water"]);

julia> T = 80 + 273.15;

julia> bubble_pressure(mod_H2O_pr,T,1)
(43987.666751092685, 2.2280375877369628e-5, 0.06645941977413594, 1.0)
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fdf65f41dcdd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.