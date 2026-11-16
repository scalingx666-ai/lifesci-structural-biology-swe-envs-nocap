# Issue

**Title:** Add Unitful support to all documented bulk properties

## Description

The documentation states (at the bottom of [Basic usages](https://clapeyronthermo.github.io/Clapeyron.jl/dev/user_guide/basic_usage/)):
```
Clapeyron also supports physical units through the use of Unitful.jl.
[...]
This is only supported for bulk properties.
```

This PR makes this necessary condition sufficient as well, by implementing unit support for all [documented Bulk properties](https://clapeyronthermo.github.io/Clapeyron.jl/dev/properties/bulk/).

I only added a couple of tests, I don't know if this requires being extensive and adding one test per method.

If you plan on extending unit support to all single phase and multiphase properties as well, it might be worth writing a macro to automate some of that work, because adding each method individually in ClapeyronUnitfulExt.jl is not really manageable. It also leads to brittle code, because it's easy to miss reflecting a change in the Unitful extension if a method is updated in Clapeyron.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `758d5cebe0c3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.