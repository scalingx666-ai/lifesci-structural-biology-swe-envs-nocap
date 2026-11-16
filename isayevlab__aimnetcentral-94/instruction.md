# Issue

**Title:** test: mark slow tests so the default suite runs under two minutes

## Description

Marks ~60 test nodes (each >=2 s serial on CPU) with the existing `slow` marker, cutting the default run (`pytest -m "not gpu and not network and not slow"`) from ~9 min to **1:53** serial. The marked tail (torch.compile, model-format roundtrips, dense-Hessian/HVP comparisons, multi-model ASE runs) still passes: 63 tests in 6:31 via `-m slow`.

Kept in the default set deliberately: the cheapest representative of each critical path — dense Hessian, HVP correctness, legacy `.jpt` loading, and a torch.compile smoke test — so no public API path loses default coverage entirely.

Two things reviewers should weigh in on:

1. **All CI lanes deselect `slow`**, so the newly marked tests now run in no lane. Proposal (not implemented here): a nightly or weekly `-m slow` lane.
2. **`make test` uses `pytest -n auto` with GPU auto-detection** — on a CUDA box the xdist workers each initialize CUDA and can OOM the device (reproduced locally: 185 failures, all `torch.OutOfMemoryError`). Worth forcing `CUDA_VISIBLE_DEVICES=""` in `make test` or serializing GPU tests; happy to do that in a follow-up.

Note: this branch and #91 both add an `[Unreleased]` CHANGELOG section; whichever merges second needs a one-line conflict resolution combining them.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7db1fff4fef3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.