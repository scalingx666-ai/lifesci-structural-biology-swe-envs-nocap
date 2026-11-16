# Issue

**Title:** Add FASTA export for observed PDB protein sequences

## Description

### Code of Conduct

Read it 
### Description

Add PandasPdb.to_fasta() to export one sequence per chain from an explicitly selected model, reusing existing model selection and amino-acid conversion.

Support configurable line wrapping, unknown-residue placeholders, and optional file output without modifying source DataFrames. Sequences contain observed ATOM residues only; missing residues are not reconstructed from SEQRES.

Add 38 export tests, a tutorial example, and a changelog entry. Existing core methods remain unchanged.

### Related issues or pull requests

Related to #22 and #157, which established and improved chain-aware sequence conversion. This PR adds FASTA serialization on top of that functionality.

### Pull Request Checklist

- [x] Added an entry to `docs/CHANGELOG.md`.
- [x] Added tests in `tests/pdb/test_fasta.py`.
- [x] Updated the PDB tutorial notebook under `docs/tutorials/`.
- [x] Ran the focused tests: 46 passed.
- [x] Ran the full suite: 138 passed, 3 skipped, 14 xfailed; the two network-dependent failures passed when rerun with network access.
- [x] Ran `flake8 ./biopandas`: existing findings remain, with no new findings introduced by this change.
- [x] Executed the new tutorial example and verified `git diff --check`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `98a9b650fb73`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.