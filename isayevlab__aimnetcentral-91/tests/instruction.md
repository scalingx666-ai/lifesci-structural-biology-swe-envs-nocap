# Issue

**Title:** chore: remove dead code confirmed unused downstream

## Description

Removes symbols with no callers in-repo, in examples/scripts/docs, or in downstream repos (aimnet-solvate, aimnet-thermo, cosmonext*, saddleforge, protonator, LoQI, pyscf_at, poymers_rxn), per static call-graph audit plus cross-repo grep.

Removed: `DataGroup.to_dict`/`.merge`/`.rename_key`, `SizeGroupedDataset.merge`/`.rename_datakey`, `train.utils.make_seed`, `ops.lazy_calc_dij_lr`, `LRCoulomb.coul_ewald`/`.coul_pme`, `modules.core.DSequential`, `constants.get_dftd3_param`, `models.utils.has_dftd3_in_config` (+ its re-export).

Kept deliberately: symbols instantiated via YAML `class:`/`fn:` keys, framework-dispatched methods (torch/ASE/TorchSim/PySisyphus/ignite/console scripts), deprecated-with-warning helpers (`has_dispersion`, `iter_lrcoulomb_mods`), documented back-compat (`ops.coulomb_matrix_ewald`), and three public-but-untested APIs that now gain unit tests: `SizeGroupedDataset.save_h5`, `AIMNet2Calculator.set_lr_cutoff`, `train.loss.mse_loss_fn`.

Gate: full CPU suite (482 passed), deptry, ruff; mypy unchanged vs main (pre-existing errors only).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9a6c56440349`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.