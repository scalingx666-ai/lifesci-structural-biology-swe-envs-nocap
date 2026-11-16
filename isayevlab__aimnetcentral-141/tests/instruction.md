# Issue

**Title:** fix: PR #135 follow-up minors

## Description

: the minor findings from the final review.

- **Calculator:** a shared scalar `charge`/`mult` is broadcast with `repeat` instead of a stride-0 `expand`. The view changed the compiled input metadata, so alternating a scalar and a per-system charge compiled one extra graph (dynamo `unique_graphs` 5 → 4 over the sequence `[0, 0]`, `0`, `[0, 0]`, `0`). The autograd link to the shared value is kept.
- **Training, stress:** `aimnet train` now checks the stress inputs on the batch the trainer already fetched (`attach_stress_batch_check`, at the first `ITERATION_STARTED`). The old check started its own loader iterator, so the loader workers spawned one extra time just to read one batch. The error message and the point where the run stops (before the first step) are unchanged.
- **Training, wandb:** a skipped step's NaN loss stays out of the `train/loss` curve, and the running `skipped_steps` count is logged as `train/skipped_steps`.
- **`scripts/gpu_validate.sh`:** when installing a torch version fails, the CPU compile check is now recorded as `skipped` in `status.json`.
- **`nbops`:** the comment on the eager mode-1 molecule count now says what it costs. The `.item()` is one host sync; CUDA `torch.bincount`, used before #135, syncs as well (it reads the max to size its output), so the eager path adds no sync compared with the code before #135.

Tests: the touched files (`test_calculator`, `test_train_utils`, `test_compile_paths`, `test_nbops`), including the gpu and slow markers: 334 passed, 1 skipped.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0c7756572851`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.