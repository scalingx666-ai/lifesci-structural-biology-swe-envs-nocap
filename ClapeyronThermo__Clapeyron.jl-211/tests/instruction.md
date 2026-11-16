# Issue

**Title:** Update estim

## Description

Adds a few new features:
* `export_model`: exports all the model parameters to a CSV. Useful for exporting results from parameter estimation.
* Add option to define your own objective function using the `objective_form` optional argument.
* Add extension for Metaheuristics.jl to abstract away complexities with parameter estimation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2de8ab7915dc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.