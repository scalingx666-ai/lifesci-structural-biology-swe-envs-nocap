# Issue

**Title:** Fix `SequenceProfile.to_consensus()` for RNA alphabet

## Description

For a profile with an RNA alphabet (`A`, `C`, `G`, `U`), `SequenceProfile.to_consensus()` always raised an `AlphabetError`: The consensus string was built with `U`, but the returned `NucleotideSequence` cannot encode `U`.

As `NucleotideSequence` represents both DNA and RNA and uses `T` for uracil, RNA profiles now use the same code path as DNA profiles, and the then unused `_rna_to_consensus()` is removed. The docstring mentions the `T` representation.

The existing nucleotide consensus tests are parametrized over the DNA and RNA alphabet. The new RNA cases fail without this fix.

*Authored by Claude*

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5eaa9e3735d1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.