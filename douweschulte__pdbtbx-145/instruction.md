# Issue

**Title:** fix: correct chain indexing so _atom_site.label_asym_id starts at 'A'

## Description

Fixed a bug when saving pdb as mmCIF where label indexing was offset:
- Issue: `chain_index` was incremented at the start of the loop, causing the first chain being assigned index 1 (label_asym_id 'B')
- Fix: increment `chain_index` at the end of the loop so `label_asym_id` correctly starts at 'A' while keeping `label_entity_id` starting at 1

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f47faf3bc63c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.