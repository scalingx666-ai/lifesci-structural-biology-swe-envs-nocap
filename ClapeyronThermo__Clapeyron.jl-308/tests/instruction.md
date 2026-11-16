# Issue

**Title:** Bulk properties with `CompositeModel`

## Description

This PR adds the groundwork necessary to start calculating bulk caloric properties with `CompositeModel`. it is missing an automatic phase detection algo (calculating the equilibria). On gamma-phi models, it calculates the caloric properties taking the activity model in account.
This PR also adds a constructor for `FluidCorrelation`. It is recommended to use this constructor instead of the `CompositeModel` one, but at the moment, they have the same functionality.
The final idea of this is to allow calculating caloric properties from incompressible fluids,including support for setting reference states.

The proposed api for an incomp fluid is:
```
FluidCorrelation(components, liquid = RackettLiquid, liquid_cp = PolynomialCpLiquid)
```
The API is active, but there aren't at the moment any models.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e23e5fabbb0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.