# Issue

**Title:** GlennJL: support Glenn.jl 0.5

## Description

- allow Glenn 0.4 and 0.5 in compat
- use the public Glenn.R_UNIVERSAL instead of ThermoDatabase internals
- accept a Glenn.ThermoDB as database input (R0 from the dataset)
- add Glenn.calculate_properties_range, keep get_properties_range, both guarded on isdefined
- throw Glenn.TemperatureOutOfRangeError in __thermocalcerror
- return NaN instead of throwing for out-of-range temperatures in d2f_dT2
- tests: ThermoDB input, SpeciesData/Dict species data, temperature and properties ranges

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `edd3445f1c11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.