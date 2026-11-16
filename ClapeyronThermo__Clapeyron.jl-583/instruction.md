# Issue

**Title:** Estimation Revamp

## Description

Inspired in the estimation framework in Langmuir.jl. At first glance, there is a lot of changes, but if you squint, the core changes are the following:
- `EstimationData` now also stores the loss and the estimator function: this allows `EstimatorData` to be used as an independent object. The struct also gains support for adding data without CSVs, we can just pass a table-like object (a named tuple, for example), an estimator method, and a loss. the method that takes a list of filepaths was moved to `estimationdata_from_csvs`. Because the estimator method works on only one estimation data object, we can specialize on the inputs and outputs, storing those as a tuple instead of a vector.
- `ToEstimate` (`EstimationModel`): `ToEstimate` is now packed with a model in a new struct  named `EstimationModel`. This struct allows a model to be indexed as if it was a vector. basically `Langmuir.from_vec`, `Langmuir.to_vec`.
`Estimation`: it is now a function, the struct that holds all the data is now named `EstimationProblem`. Incredibly, there should be no breaking changes there, apart from the renaming of the struct.

The biggest change is that all the estimation is done through a minimal API stored in the `EstimationUtils` submodule. we can now define custom estimation model types and custom estimation loss types (`EstimationData` is now a subtype of `EstimationUtils.AbstractEstimationLoss`, `EstimationModel` is a subtype of `EstimationUtils.AbstractEstimationModel`).

Two new doc pages:
- Estimation basics, that documents the new API
- Custom estimation, documents how to create a custom estimation type by using the EstimationUtils package

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3e688c6a3942`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.