# Issue

**Title:** Validate ligand SMILES and residue selections consistently

## Description

Raise a contextual ValueError for invalid ligand SMILES at both parser entry points. Accept .yml consistently for design files, redesign masks and nested file specifications; require literal dots in residue ranges. Reject single indices and open-ended ranges beyond a chain, plus zero range endpoints, before they select the next chain, silently drop a constraint or raise an unrelated indexing error.

Supersedes #257 and incorporates the schema subset of #152. The mixed analysis, ID-normalization and PDB-schema changes in #152 remain separate. MolFromSmiles already sanitizes valid molecules, so no redundant property-cache mutation is added.

Credits: @fnachon for #257 and @y1zhou for #152.

Validation: 41 committed regression cases pass, including actual SMILES/conformer generation, file parsing, relative nested paths, redesign masks and range boundaries. The focused parser/structure suite passes 357 cases. Independent reviewers reproduced the old failures and checked valid inputs and error paths.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb564724be38`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.