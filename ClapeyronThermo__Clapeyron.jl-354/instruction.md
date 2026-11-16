# Issue

**Title:** `@generated` split model

## Description

one of our main speed problems on multicomponent solvers was starting to be the model splitting. this should solve that problem once and for all.

For reference, before, we divided each param first and then joined together everything, recursing only at the EoSModel level. this PR adds a general recursion function (`each_split_model_struct`) that generates an optimal representation of how a struct should be split according to our rules. `EoSModels` then the `split_model` function just collects a vector of `each_split_model(model,I)` for each `I` in the splitter
```julia

julia> model = SAFTgammaMie(["water","acetone"])
SAFTgammaMie{BasicIdeal} with 2 components:
 "water": "H2O" => 1
 "acetone": "CH3COCH3" => 1
Group Type: SAFTgammaMie
Contains parameters: segment, shapefactor, lambda_a, lambda_r, sigma, epsilon, epsilon_assoc, bondvol

#before
julia> @btime split_model(model)
  58.800 μs (587 allocations: 44.53 KiB)
2-element Vector{SAFTgammaMie{BasicIdeal}}:
 SAFTgammaMie{BasicIdeal}("water")
 SAFTgammaMie{BasicIdeal}("acetone")

#after
julia> @btime split_model(model)
  18.000 μs (431 allocations: 22.47 KiB)
2-element Vector{SAFTgammaMie{BasicIdeal}}:
 SAFTgammaMie{BasicIdeal}("water")
 SAFTgammaMie{BasicIdeal}("acetone")
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dc08ec4dc4d8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.