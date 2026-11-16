# Issue

**Title:** Notebooks to alphafold3-colabfold 3.1.18; RGI via its DENOISED_HOOK

## Description

Moves both notebooks to `alphafold3-colabfold` 3.1.18 (released today) and keeps RGI working on it.

### RGI
RGI currently reaches the diffusion sampler by SHA256-checking `alphafold3.model.network.diffusion_head.sample`'s source and rewriting four lines of it in memory. That pins it to 3.1.11. 3.1.17's sampler already hashes differently, and from 3.1.18 the sampler loop is refactored, so none of the four lines exist.

3.1.18 exposes the same point as a supported hook, `diffusion_head.DENOISED_HOOK`:
- The signature is `hook(positions_denoised, sigma, step)`.
- It's applied after the denoiser, and after chai's second-order call.
- `sigma` is the step's pre-churn noise level and `step` its zero-based index, exactly what the source patch passed.

Changes:
- `colabfold/rgi/sampler.py`: `guided(diffusion_head, minimize)` uses the hook when the installed release has it, and otherwise instruments the 3.1.11 sampler exactly as before.
- `colabfold/rgi/runtime.py`: uses `guided()`. The 3.1.11 pin applies only when the hook is absent.
- `tests/test_rgi_sampler.py`: the sampler tests go through `guided()`, so they hold the same expectations against either release.
- `SUPPORTED_MODELS` gains `protenix1`, `helixfold3` and `esmfold2_fast`. RGI was tested on each; see below.

### Notebooks
- **Both notebooks:** `VERSION = '3.1.18'` in `ColabFold2_preview.ipynb` and `AlphaFold3_of3.ipynb`.
- **`ColabFold2_preview` models:** adds `protenix1`, `helixfold3`, `esmfold2_fast` and `bioemu2`, each with a row in the Instructions table.
- **Licence:** `helixfold3`'s weights are non-commercial (NC-SA). Its table row and the Licence section say so.
- **No confidence head:** a model without one (`bioemu2`) now shows "Mean pLDDT: n/a" instead of averaging its all-zero pLDDTs to "0.000".

### Testing
On a real Colab T4 (Python 3.13, JAX 0.11.1), with 3.1.18 installed from PyPI and `colabfold.rgi` from this branch, every cell ran except the download cell:

| run | result |
|---|---|
| `helixfold3`, MMseqs2 server | mean pLDDT 96.0, pTM 0.93 |
| `openbind0` with an 8 Å RGI distance restraint | 8.000 Å in all 5 samples |
| `bioemu2` | completes; pLDDT and pTM shown as n/a |
| `AlphaFold3_of3.ipynb`, `openfold3` | completes; mean pLDDT 56.3 |

`tests/test_rgi_sampler.py` passes against both alphafold3 3.1.11 and 3.1.18. These tests skip in this repo's CI, which doesn't install alphafold3.

Locally (A10, 3.1.18), the distance test pulled residues 1–5 of a 47-residue bundle to 8 Å from residues 40–46. RGI's own measurement gave 8.0 Å in every sample on 14 models: alphafold3, chai1, boltz2, protenix2, protenix1, openbind0, openfold3, opendde, rosettafold3, helixfold3, esmfold2, esmfold2_fast, esmfold2_lm600m and esmfold2_lm300m. Without RGI these were 11–15 Å. bioemu2 is unaffected because its own sampler isn't the one the hook reaches, so it stays vanilla only.

Ligand conformer restraints on a SMILES with three stereocentres gave correct stereochemistry in 5/5 samples on alphafold3 and boltz2, against 2/5 and 1/5 without RGI.

Unrelated, and present on `main` before this change: `tests/test_rgi_notebook.py::test_native_form_runs_without_widgets_and_reads_every_edit[ColabFold2_preview.ipynb-openbind0]` fails wherever `rgi_toolkit` is installed (CI skips it), because the notebook's form text no longer matches the test's expected copy.

cc @YoshitakaMo: this changes how RGI reaches the sampler.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `297da92fdff1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.