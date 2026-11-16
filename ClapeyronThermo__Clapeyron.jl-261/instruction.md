# Issue

**Title:** support for superancillaries via loading of EoSSuperancillaries.jl

## Description

superancillary support via pkg extensions. The workflow is the following:
1. load the package: `using EoSSuperancillaries`
2. that's it. the extension defined method for `model::Union{SuperAncPCSAFT,SuperAncCubic}` (hardcoded types that should support superancillaries.
3. the extension adds methods for `x0_sat_pure`, `x0_crit_pure(model::SuperAncPCSAFT)` and `crit_pure(model::SuperAncPCSAFT)`. this is useful in the case of extended precision calculations where the results are not exactly the ancillary, while being a really good starting point.
4. the use of superancillaries can be turned on/off via `Clapeyron.use_superancillaries!(val::Bool)`. This is useful for testing the default initial guess methods.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `760dbc5c4d01`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.