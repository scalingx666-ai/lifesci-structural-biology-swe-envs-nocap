# Issue

**Title:** Lower CG nucleic acid chain break cutoff to 6 Å

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Lowers `dnacgbreak_cutoff` in `topocg` from 10 to 6 Å. Linked CG nucleotides are ~3.5 Å apart (BB3(i)–BB1(i+1)), but only ~7–10 Å across a single missing nucleotide, so such breaks were missed and the spurious bond was closed during minimization. Also fixes the header and bead names (`BB3`/`BB1`) in `patch-breaks-cg-dna-rna.cns`. Port of haddocking/haddock25#102.

## How was this tested?
- `topoaa` + `topocg` on `dna_3GO3_aa.pdb` (A4 removed) and `rna_1SDR_aa.pdb` (A6 removed): before, a bond spanned the gap and closed it to 3.55 Å; now no bond is created and the gap is kept (9.75 / 8.17 Å).
- New `integration_tests/test_topocg.py`: checks the gap is not bonded for DNA and RNA (fails with the old 10 Å cutoff) and intact strands stay linked.
- `pytest tests/ integration_tests/ end-to-end_tests/test-cg-scoring.py`: all passing (skips are MPI/DIRAC/platform only).

## AI assistance
Analysis, fix and testing done with Claude Code; results checked as described above.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers
The cutoff is only set in the CNS script (not a user parameter).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fe53e138bf18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.