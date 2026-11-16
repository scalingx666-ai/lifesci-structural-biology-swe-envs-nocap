# Issue

**Title:** fix PDB parsing in generate_report.py

## Description

-  
- Updated generate_report.py to use BioPython PDBParser to extract pLDDT values from bfactor field. Previous parsing assumed that fields were whitespace delimited but PDB is a fixed-width format.
- Updated generate_comparison_report.py to use BioPython PDBParser to extract pLDDT values from bfactor field
- Also added support for CIF format parsing which is detected by input file extension in case it is required in the future.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1299608b73ae`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.