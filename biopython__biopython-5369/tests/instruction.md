# Issue

**Title:** Codon align convenience function part 2

## Description

This PR generalizes the convenience function `codon_align` of the codon aligner such that it can be used in two ways:
- With an amino acid sequence as the first argument and a nucleotide sequence as the second argument, it performs an alignment between the two and returns it.
- With an amino acid alignment as the first argument and nucleotide sequences as the second argument, with the number of nucleotide sequences equal to the number of proteins in the amino acid alignment, it performs an alignment between each protein sequence and the corresponding nucleotide sequence. It then returns the alignment of the nucleotide sequences, based on the protein sequence alignment and the alignment of each protein sequence against the corresponding nucleotide sequence.

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fa5f1daee5ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.