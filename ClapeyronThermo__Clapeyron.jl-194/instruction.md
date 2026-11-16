# Issue

**Title:** Solid solubility

## Description

Some preliminary work on a solid solubility solver. Right now we can calculate both the eutectic point and the solubility of a solid at a given temperature, pressure and solvent composition. This makes use of the CompositeModel API. A Simple example of this would be:
```julia
julia> model = CompositeModel(["water","ethanol","paracetamol"]; liquid=PCSAFT,gas=nothing,saturation=nothing,melting=nothing,solid=SolidSolubility,solid_userlocations=(;Hfus=[6000.,4969.00,27000], Tm=[273.15,158.70,443.6]))
Composite Model:
 Liquid Model: PCSAFT{BasicIdeal}("water", "ethanol", "paracetamol")
 Solid Model: SolidSolubility("water", "ethanol", "paracetamol")


julia> solid_solubility(model,1e5,298.15,[0.5,0.5,0.];solute=["paracetamol"])
3-element Vector{Float64}:
 0.4905731673763385
 0.4905731673763385
 0.01885366524732288
 ```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6daaf2233fae`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.