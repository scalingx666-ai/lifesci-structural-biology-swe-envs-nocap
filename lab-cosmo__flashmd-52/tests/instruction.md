# Issue

**Title:** Guard against multiple time-stepping in i-PI, document LAMMPS RESPA limitation

## Description

## Summary
- FlashMD's i-PI steppers (`get_nve_stepper`/`get_nvt_stepper`/`get_npt_stepper`) replace i-PI's whole velocity-Verlet step and cannot reproduce its RESPA-style `nmts` splitting across multiple force levels. Previously this failed silently, producing wrong dynamics; now a clear `ValueError` is raised if more than one MTS level is configured.
- Documented the analogous issue in LAMMPS: `fix metatomic` never registers the RESPA integration hooks, so under `run_style respa` it is silently never called at any level. That fix lives in the separate metatomic-lammps package, so for now it's only documented in `docs/lammps.md` with a recommendation to stick to `run_style verlet`.

## Test plan
- [ ] Confirm `get_nve_stepper`/`get_nvt_stepper`/`get_npt_stepper` raise `ValueError` when the i-PI `<motion>` block defines `nmts` with more than one level
- [ ] Confirm existing single-timescale i-PI simulations are unaffected

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3272061dff7c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.