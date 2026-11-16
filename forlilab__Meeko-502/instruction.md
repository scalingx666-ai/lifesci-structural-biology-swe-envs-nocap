# Issue

**Title:** faster espaloma charges with charge-only graph and model

## Description

## Description

Speeds up espaloma charge assignment in `MoleculePreparation.prepare()` by about 10× on CPU, with identical charges. 

- Charge-only graph and model: When espaloma dihedrals are not requested, `get_espaloma_graph()` builds only the parts of the espaloma graph needed for charges (atom features, bonds, total charge). It runs only the model parts that produce charges (representation, atom-level readout, charge equilibration). Angle, torsion, improper, nonbonded and 1-4 terms are skipped. The graph inputs come from espaloma's own featurization functions, so features and edge order match the full graph. `get_espaloma_graph()` gains an optional `charges_only=False` argument. `preparation.py` passes `charges_only=self.dihedral_model != "espaloma"`.
- Fallback: The original full graph and model are used when espaloma dihedrals are requested, or when the model layout is not recognized. An unrecognized layout is logged once as a warning.

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [x] Other (please describe): performance improvement (non-breaking)

## Checklist:

Please go through the following checklist before submitting the PR:

- [x] Written a description of the feature or bug fix above.
- [ ] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature.
- [x] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions.
- [ ] (Optional) new test added to account for new feature.

## Additional Information

- Espaloma itself is not modified. 
- Most of the remaining time is the RDKit → OpenFF conversion and graph building (~6 ms per molecule). Also, running the model on a GPU saved only ~1.7 ms per molecule in testing, so no GPU path is added.
- ~~`EspalomaTyper` now caches the espaloma model per version.~~ `EspalomaTyper` now is cached as a class attribute of `MoleculePreparation`. Before, `esp.get_model()` ran for every molecule.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5b3618a34d08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.