# Issue

**Title:** Add optional inference-time diffusion steering (physical guidance)

## Description

## Summary

Adds an optional **diffusion-steering** mode to the JAX sampler that improves the
physical plausibility of predicted small-molecule poses, without retraining.
When enabled, the x0 prediction is nudged at every denoising step by the
gradient of a set of differentiable Boltz-style physical/chemical potentials.

**Off by default** — the no-steering path is unchanged. Enable with `--steering`.

## What it does

At each denoising step, run `num_gd_steps` of gradient descent on the sum of the
active potentials and add the accumulated displacement to the x0 prediction.
Potentials covered:

- **PoseBusters bounds** — bond lengths, bond angles, internal steric clashes
- **Chirality** (tetrahedral centres) and **stereo bonds** (E/Z)
- **Planar bonds** (double-bond / sp2 planarity)
- **VDW overlap** — inter-chain (protein–ligand) van-der-Waals clashes
- **Connections** — covalent links across residues/chains
- **Symmetric-chain COM** repulsion

Constraint extraction (RDKit) runs once on the host; the per-step guidance is a
JAX `jax.grad` over the energies (dihedral via `atan2` for a singularity-free
gradient), applied inside the sampler's denoising loop.

## Results (PoseBusters-v2, single diffusion sample)

| metric | off | on |
|---|---|---|
| PoseBusters validity (`bust`) | ~72% | **~93%** |
| pocket-aligned ligand RMSD < 2 Å (DockQ) | ~79% | ~79% (unchanged) |
| joint: valid **and** RMSD < 2 Å | ~62% | **~75%** |

40 targets moved from invalid → valid, **0 regressions**, docking accuracy
essentially unchanged — steering improves physical validity without trading off
accuracy.

## Usage

```bash
intellifold predict fold_input.json --model-dir=model_v2 --output-dir results \
    -- --norun_data_pipeline --steering

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a52251795faf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.