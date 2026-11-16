# Issue

**Title:** Add automated alignment modes and Rfam support to rna_calc_evo_rmsd

## Description

## Summary
This PR adds automated structure alignment capabilities to `rna_calc_evo_rmsd`, eliminating the need for manual alignment files in many cases. Two new alignment modes are introduced: Rfam-based alignment (using covariance models) and pairwise sequence alignment. Additionally, an "all vs all" mode enables batch processing of multiple structures with automatic family-based grouping.

## Key Changes

### New Alignment Modes
- **Rfam mode** (`--auto rfam`): Automatically searches sequences against Rfam using `cmscan`, identifies shared families between target and models, and aligns them to the family covariance model using `cmalign`. Consensus (RF) columns are used for RMSD calculation.
- **Pairwise mode** (`--auto pairwise`): Performs simple global pairwise sequence alignment between target and models without requiring Rfam, suitable for closely related sequences.
- Made `-a/--rna_alignment_fn` optional; when omitted, automatic alignment is triggered.

### All vs All Processing
- New `--all_vs_all` flag enables mapping all input structures to their best Rfam families, building per-family alignments, and calculating RMSD and sequence identity for all pairs within each family.
- Generates scatter plot (`<output>_seqid_vs_rmsd.png`) showing sequence identity vs RMSD relationship.

### Sequence Identity Calculation
- Added `calc_seq_identity()` function using `esl-alipid` (Easel) to compute sequence identity for aligned pairs.
- Sequence identity is now included in output CSV for all modes.
- Gracefully handles missing `esl-alipid` with warning and NaN values.

### New RfamAlign Module
- Created `RfamAlign.py` to encapsulate Rfam/Infernal integration:
  - `cmscan()`: Search sequences against Rfam database
  - `cmalign()`: Align sequences to covariance models
  - `get_best_scores()`: Extract best family hits per sequence
  - `find_common_family()`: Identify shared families between sequences
  - Automatic Rfam database path resolution via `--rfam_db`, `RFAM_DB_PATH` environment variable, or rna-tools config

### RNAalignment Enhancements
- Refactored position tracking to support pairing residues between two sequences via `get_paired_positions()`.
- Added `get_column_positions()` to return alignment column positions with gap awareness.
- Added `get_seq()` to retrieve aligned sequences with gaps.
- Improved gap handling to recognize `.` and `~` in addition to `-`.

### RNAmodel Updates
- Added `get_sequence()` function to extract nucleotide sequence from PDB structures.
- Added `get_nucleotide_residues()` to identify nucleotides (skipping waters/ions, keeping modified nucleotides).
- Added static `parse()` method for consistent PDB parsing.
- Changed atom selection to use sequence position indices (1-based) instead of PDB residue numbers, enabling direct comparison of structures aligned by sequence.

### Configuration & Output
- Added pandas display options for better CSV output formatting.
- New `save_results()` function consolidates output generation (CSV, RMSD plot, sequence identity plot).
- Alignments from Rfam mode saved to `<output>_rfam/<family>.sto` for inspection and reuse.

## Implementation Details
- Pairwise aligner uses end-gap penalty reduction to allow fragment alignment to full-length structures.
- Rfam alignment uses temporary working directory for intermediate files, cleaned up after processing.
- Error handling via new `RfamAlignError` exception class for Rfam/Infernal-specific issues.
- Backward compatible: existing alignment-based workflow (`-a` flag) remains unchanged.

https://claude.ai/code/session_01KrCDqyXPBBAHfoVUXZfaUM

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cddb640fcb67`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.