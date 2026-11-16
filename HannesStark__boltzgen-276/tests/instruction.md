# Issue

**Title:** Default to SolubleMPNN while retaining BoltzIF for small molecules

## Description

Sequence redesign now defaults to SolubleMPNN for protein, peptide, antibody/nanobody, and protein-redesign protocols, including `--only_inverse_fold`. The `protein-small_molecule` protocol always selects BoltzIF; explicitly requesting SolubleMPNN there fails before model downloads or GPU access. Other protocols can select BoltzIF with `--inverse_fold_model boltzif`.

Installation stays unchanged. The adapter uses existing PyTorch/NumPy dependencies and a bundled upstream MIT-licensed LigandMPNN model module, with pinned provenance. The 6.4 MiB SolubleMPNN checkpoint downloads automatically with a pinned SHA256 into the existing cache location; explicit local weights and predownloaded weights work offline. No ProDy, extra checkout, compiled extension, or separate environment is required.

The implementation keeps the existing data/writer/downstream interfaces, fixed residues, amino-acid exclusions, per-position constraints, and YAML homomer sequence tying for `--only_inverse_fold`. Tied positions share the intersection of allowed identities and reject incompatible constraints. Generated UNK residues are supported when they have complete N/CA/C/O backbones. Inverse-fold-only runs now honor `--num_workers` (CLI default: 1) for both backends. Invalid geometry and OOM fail one sample; invalid configuration fails explicitly. Sampling settings are checked before design starts, and prediction device counts are capped to the number of samples.

Validation:

- 114 tests passed on CPU, including the existing parser/constraint tests and real pretrained weights through YAML -> sampling -> CIF/NPZ -> generated-structure sampling -> downstream folding/affinity data loaders.
- Covers all six protocols, both input modes, selected-model-only checkpoint access, small-molecule routing/rejection, clean CLI default-cache behavior, generated UNK, fixed residues, ligand data preservation, constrained/tied sampling, incompatible constraints, extreme positive temperatures, injected OOM recovery, geometry failures, and excess device requests.
- Built sdist and wheel, verified configs and MIT license/provenance are packaged, installed the wheel with `--no-deps`, and loaded the real checkpoint. Runtime dependency list unchanged. New adapter/tests pass Ruff E9/F/I; formatting and whitespace checks pass.

SolubleMPNN sees protein backbone geometry and fixed protein sequences, not ligand, nucleic-acid, side-chain, or cyclic-bond context. Nonprotein data are retained for downstream evaluation; this does not establish equivalent design quality. GPU throughput, actual multi-GPU/OOM behavior, and full diffusion/refolding inference were not benchmarked. The existing generated-file loader does not restore symmetry groups from CIF/NPZ outputs. Existing public reuse behavior is preserved; this PR does not rewrite the YAML loader's global resume offsets.

Run real-weight integration tests with:

```bash
BOLTZGEN_TEST_MOLDIR=/path/to/mols.zip \
BOLTZGEN_TEST_SOLUBLEMPNN_CHECKPOINT=/path/to/solublempnn_v_48_020.pt \
uv run --extra test pytest -q tests
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a3149cf18eeb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.