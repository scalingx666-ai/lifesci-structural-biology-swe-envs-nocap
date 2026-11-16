# Issue

**Title:** Clean Boltz outputs

## Description

Tidies Boltz output
- Tidies output files in `Boltz` to be consistent with other modules
- Keeps the meaningful and documented [Boltz output directory structure ](https://github.com/jwohlwend/boltz/blob/main/docs/prediction.md#output) by `output, path ("boltz_results_${meta.id}")    emit: intermediates`

## PR checklist

- [X] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c90ee7f4a0a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.