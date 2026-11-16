# Issue

**Title:** Add diagnostic text output format for failed checks

## Description

## Summary

This PR adds a new `diagnostic` text output format for failed PoseBusters checks:

```bash
bust ligand.sdf -p protein.pdb --outfmt diagnostic
```

It keeps the normal concise summary, but adds extra context where available, for example:

- atoms involved in bond-length, bond-angle, and internal-clash failures
- atoms involved in ring-flatness failures
- protein, cofactor, or water atoms involved in intermolecular clashes
- measured distances and relevant thresholds

Atom numbering is reported as zero-based RDKit indices.

The example below is from the [OpenBind enteroviral 2A protease dataset](https://doi.org/10.5281/zenodo.20026660):

```text
Diagnostics for A71EV2A-x0152b/A71EV2A-x0152b_ligand.sdf | molecule: A71EV2A-x0152_A_201_0_1_A71EV2A-x3977+A+202+0+1__LIG | position: 0
  Minimum distance to protein:
    ligand atoms (RDKit indices): 12 (C)
    conditioning atom: 21 (O); SER A:7 O
    distance: 2.369 Å
    sum of radii: 3.250 Å
    scaled sum of radii: 3.250 Å
    relative distance: 0.729
    minimum allowed relative distance: 0.750
```

The diagnostic output reuses results already produced by the existing modules. It does not change checks, thresholds, pass/fail behaviour, or the existing `short`, `long`, and `csv` output formats.

For checks without detailed structured information, the failure is still listed with a simple fallback message.

## Current limitation

`diagnostic` output currently runs sequentially and does not use PoseBusters' multiprocessing mode. Existing output modes are unaffected.

## Tests

Tests cover geometry, flatness, intermolecular clashes, formatting, multi-record SDF input, fallback behaviour, and equivalence of the underlying PoseBusters results between normal and diagnostic execution.

I do have one pre-existing failure in the upstream test suite:

```text
tests/test_modules/test_energy_ratio.py::test_check_energy_ratio_1jn2_62
```

This also fails without this PR in my current RDKit/Python environment.

## Possible follow-up: HTML report

I have also been experimenting with a self-contained HTML diagnostic report on my [`feature/html-diagnostics`](https://github.com/Jnelen/posebusters/tree/feature/html-diagnostics) branch. This is especially useful for understanding failures in less obvious or edge-case structures.

It builds on the structured diagnostics from this PR and adds summary tables and visualisations of the implicated atoms and distances.

Here is the same example from OpenBind I shared before, but in the HTML output format:
<img width="1226" height="599" alt="image" src="https://github.com/user-attachments/assets/791496e3-61f2-4bc8-b260-ee64a8d47326" />

The label placement is heuristic and is not always perfect for crowded structures, but I have found the report very useful for quickly understanding failures.

I have kept that work separate to keep this PR focused. If useful, I would be happy to open the HTML report as a follow-up PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6236d0701749`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.