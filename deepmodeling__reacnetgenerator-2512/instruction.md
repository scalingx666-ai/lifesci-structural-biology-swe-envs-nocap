# Issue

**Title:** fix: normalize equivalent aromatic species representations

## Description

Equivalent Kekulé assignments currently produce two species and a false reaction under `miso=0`. Normalize supported aromatic representations before SMILES serialization and VF2 matching so the same chemical species retains one identity.

.

### Behavior

- Validate a disposable RDKit copy with valence, ring, kekulization, radical and aromaticity perception. Transfer only aromatic bond orders and flags to the identification graph; do not run charge cleanup, hydrogen adjustment or tautomer enumeration.
- Retain the original graph for unsupported elements/bond types and failed perception, including overvalent intermediates, charge-incomplete nitro structures and metal-containing molecules. Preserve the existing serialization-failure/VF2 fallback.
- Use the same normalization for SMILES and VF2, including fallback matching. The broader `miso=1/2` equivalence rules are unchanged.
- Preserve raw atom indices, bond records and molecule frame ranges. Equivalent records share a species name/ID while remaining separate molecule records. CSV/HDF5 reaction output and the reaction matrix suppress the representation-only transition.

The guide defines the supported domain and compatibility boundary. Normalization occurs **after HMM filtering**: original record signals are not pooled, and records already filtered out are not recovered. This is aromaticity normalization under RDKit's model, not general resonance equivalence.

### Validation

- 342 core regression tests passed (2 benchmark cases deselected), covering detection, isomer identification/representatives, HMM alignment, indexed paths, timed output/validation, and utilities.
- All 27 aromatic regressions passed with RDKit 2026.03.4 and 2026.09.1. They cover atom/bond permutations, fused and heteroaromatic rings, positional isomers, genuine acyclic/cyclic bond changes, tautomers, radicals, fallback behavior, and a 60-frame bond trajectory across both identification methods, HMM on/off and all three `miso` modes.
- The trajectory test verifies one species, no false reactions, unchanged raw bonds/atom IDs, retained frame ranges, species counts, and validated HDF5 output. Six additional selective-output tests passed.
- Ruff, Ruff format, Velin, mdformat, license, whitespace and end-of-file checks passed.

### Cost

Warm-process microbenchmarks (best of five batches of 1,000 conversions) measured approximately 53 → 117 µs for chlorofluorobenzene, 79 → 180 µs for naphthalene, and 106 → 236 µs for phenanthrene. Acyclic molecules skip perception/copying.

For a synthetic trajectory with 128 aromatic molecules and 60 frames, median detect/filter/path time over three runs was 1.169 → 1.117 seconds, while species/reaction-type counts changed from 2/1 to 1/0. The checked-in `reaction.bond` control retained identical reaction output and approximately 0.153 seconds runtime. These small measurements do not establish performance on large production PAH trajectories.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **New Features**
  * Equivalent Kekulé forms of supported aromatic molecules are now recognized as the same species by default. Original molecule records, bond details, and trajectory evidence remain available, and HMM filtering continues to use the original records.
* **Documentation**
  * Added a guide to aromatic species identification, including supported structures, fallback behavior, and how this differs from broader species-merging options. The guide is now listed in the User Guide contents.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `97efe9ff3c6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.