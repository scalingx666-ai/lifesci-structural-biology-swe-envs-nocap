# Issue

**Title:** support TPD with activity coefficients

## Description

MWE
```
julia> model = UNIFAC(["water","hexane"])
UNIFAC{PR{BasicIdeal, PRAlpha, NoTranslation, vdW1fRule}} with 2 components:
 "water": "H2O" => 1
 "hexane": "CH3" => 2, "CH2" => 4
Group Type: UNIFACDortmund
Contains parameters: A, B, C, R, Q

julia> tpd(model,1e5,300,[0.5,0.5], lle = true)[1]
2-element Vector{Vector{Float64}}:
 [0.9999223773695307, 7.762263046923225e-5]
 [0.01538030004771636, 0.9846196999522837]
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91108c7456dd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.