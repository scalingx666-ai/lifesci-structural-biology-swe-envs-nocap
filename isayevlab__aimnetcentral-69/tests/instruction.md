# Issue

**Title:** docs: add External Packages section; park GROMACS NNPot wrapper

## Description

## Summary

- Adds a new **External Packages** documentation section under `docs/external/` grouping every external package that consumes AIMNet2, with audited per-integration status (ASE, pysisyphus, OpenMM, AMBER, SCM AMS, ORCA, GROMACS, LAMMPS).
- Adds `aimnet/interfaces/` as a new package for external-engine wrappers; ships a parked GROMACS NNPot wrapper (`aimnet/interfaces/gromacs.py`) with a clear WIP banner.
- Adds `docs/superpowers/plans/2026-04-26-torchscript-export.md` tracking the concrete TorchScript-export blockers (`aimnet/nbops.py:51` `data_ptr()` and `aimnet/modules/lr.py:596` DFTD3 autograd) that gate GROMACS, LAMMPS, and an optional TorchScript fast-path for OpenMM and AMBER.

Status snapshot in the new docs:

| Engine | Status |
|---|---|
| ASE, pysisyphus | Supported (in-tree calculators) |
| OpenMM (`openmmml`) | Supported upstream via `MLPotential('aimnet2')` (Python callback) |
| AMBER (`torchani-amber`) | Supported upstream for `sander`/`pmemd` (recompiled AmberTools 25/26) |
| SCM AMS (`MLPotential` engine) | Supported upstream from AMS2024.1 (`Model AIMNet2-wB97MD3`/`-B973c`) |
| ORCA (`!ExtOpt`) | Supported upstream from ORCA 6.1 (ORCA-External-Tools `aimnet2` wrapper) |
| GROMACS NNPot, LAMMPS `pair_style mliap` | Blocked on TorchScript export |

## Verification

- Strict `mkdocs build --strict` passes after every change in this branch.
- Wrapper code path: `GromacsNNPotWrapper` was sanity-checked against a dummy inner ScriptModule (`torch.jit.script`, `torch.jit.save`, `torch.jit.load`, autograd-derived forces all OK).
- All claims about external packages were independently verified by parallel review agents (in-repo + upstream/web) before commit; corrections from the audit are folded in (e.g. GROMACS NNPot was introduced in **2025.0**, not 2026; PyPI distribution name is `openmmml`; pysisyphus YAML key is `aimnet`, not `aimnet2pysis`; AMBER goes through `torchani-amber`'s `&extpot`/`&qmmm` paths, not an in-process Python callback).

## Test plan

- [ ] `mkdocs build --strict` succeeds locally.
- [ ] mkdocs nav renders the new External Packages section between Advanced Use Cases and Reference.
- [ ] Each `docs/external/*.md` page renders and all internal cross-links resolve.
- [ ] `aimnet/interfaces/gromacs.py` import succeeds; `build_gromacs_nnpot_model("aimnet2")` raises with the expected "did not load as a TorchScript ScriptModule" / "external long-range modules" message rather than producing a broken `.pt`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `395fe13e9588`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.