# Issue

**Title:** Preserve stereochemistry and explicit aromatic '<-->' bonds in Mermaid↔RDKit converters

## Description

### Motivation

- Add explicit support for an aromatic bond token and ensure aromaticity is preserved when converting Mermaid graphs to RDKit molecules.
- Preserve double-bond E/Z and tetrahedral R/S stereochemistry robustly across round trips between RDKit and Mermaid.
- Use absolute CIP labels for atom IDs during export so handedness is stable and serializable.

### Description

- Added `<-->` mapping to `Chem.BondType.AROMATIC` and updated bond regexes to accept the new aromatic token in `molecode/markush/mermaid_to_rdkit.py`, `molecode/molecule/mermaid_to_rdkit.py`, and related modules.
- Postponed stereochemistry assignment until after topology is built and `Chem.SanitizeMol` is called by collecting stereo records and applying them with new helper methods `
_assign_chirality_from_ids` and `_assign_double_bond_stereo` which restore CIP R/S and E/Z configurations.
- Changed atom ID generation in the `rdkit_to_mermaid` converters to use RDKit's `_CIPCode` property (absolute `R`/`S`) instead of raw `ChiralTag` values so exported IDs are chemically meaningful and stable.
- Made the system prompt a raw string to avoid escape parsing changes and added `tests/test_molecule_stereochemistry.py` with round-trip tests for aromatic bonds, E/Z double bonds, and R/S tetrahedral stereochemistry.

### Testing

- Added and ran `pytest tests/test_molecule_stereochemistry.py` which exercises aromatic non-kekulized rings, E/Z double-bond stereochemistry, and R/S tetrahedral stereochemistry, and all tests passed.
- The new tests verify that exported Mermaid graphs contain the `<-->` aromatic token, `===|E|`/`===|Z|` double-bond stereo markers, and `_R`/`_S` CIP atom-id suffixes, and that round-tripped molecules match canonical isomeric SMILES.

------
[Codex Task](https://chatgpt.com/codex/cloud/tasks/task_e_6a1c855b7c9c83218cbbaf83ecd26549)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2f04d49fed9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.