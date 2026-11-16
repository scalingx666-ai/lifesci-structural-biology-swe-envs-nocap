# Issue

**Title:** converter copying values from info/arrays on demand

## Description

solution for #170 
Adding ability to pass arrays or info from `ase.Atoms` object to the fortran objects. With test.

`add_info` and `add_arrays` parameters can be passed to `quippy.potential.Potential.__init__()` for keys from the info and arrays dictionaries to be passed to the fortran atoms object when calling calculate, even internally, so `potential.get_potential_energy()` will also do it in the background. 

Calling `quippy.potential.Potential.calculate()` with `add_info` and `add_arrays` explicitly (not as None), will overwrite the settings of `__init__`. 

The supported types are detailed in the docstrings (of `quippy.convert.ase_to_quip`) and are working for real and int scalars (as 1d arrays) and arrays  as well, logicals are retrieved as int32.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `04817bf9308f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.