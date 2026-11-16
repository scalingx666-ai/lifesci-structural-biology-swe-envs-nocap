# Issue

**Title:** Updated the memory size estimate in contactmap

## Description

## What does this PR do and why?

. The `[contactmap]` memory gate was skipping the module on hosts
with plenty of memory — the antibody-antigen tutorial reported
`needs 37.25Gb has 16.83Gb` on a 32 GB laptop.

That 37.25 Gb figure never looked at the input files at all. Three separate
problems compounded in `get_necessary_memory()` / `get_available_memory()`
(`src/haddock/libs/libutil.py`):

1. **The file lookup always failed.** The estimate called
   `os.path.getsize(models[0].file_name)`, but `PDBFile.file_name` is a bare
   basename (`libontology.py:49`) while `_run()` executes with the cwd set to
   the *contactmap* step folder (`modules/__init__.py:251`) and the models live
   in the *previous* step folder. `getsize()` therefore raised on every real
   run, and a bare `except Exception` silently substituted a hard-coded 10000
   atom guess. That is where the number came from:
   `10000² × 8 / 1024³ = 0.745 Gb`, times `ncores = 50`, is exactly 37.25 Gb.

2. **The size→atoms heuristic was off by an order of magnitude.**
   `file_size // 10` assumes 10 bytes per atom. A PDB ATOM record is 81 bytes,
   and `extract_pdb_dt()` skips hydrogens, so the matrix only ever covers heavy
   atoms. Measured on `tests/golden_data`, the real figure is 99–158 bytes per
   heavy atom — a 10–16× overestimate of the atom count, which because memory
   is quadratic becomes a 100–250× overestimate of memory.

3. **The scaling assumed more parallelism than exists.** The per-model cost was
   multiplied by `ncores`, but only `min(ncores, n_jobs)` distance matrices are
   ever live at once, and `n_jobs` is the number of clusters (or `topX` models
   when unclustered) — typically far below `ncores`.

### What it does now

- Models are addressed through `rel_path` instead of `file_name`, so the files
  are actually found.
- The largest model is located by `stat` (cheap) — matching what the docstring
  always claimed but the code never did — and only that one file is parsed, by
  a new `count_heavy_atoms()` helper that mirrors `extract_pdb_dt()`'s filter
  exactly. Reading one file costs a few ms and removes the guesswork entirely.
- The peak accounts for `compute_distance_matrix()` calling
  `squareform(pdist(coords))`: the condensed `N(N-1)/2` array is still alive
  while `squareform` allocates the full `N²` matrix, so the peak is ~1.5× the
  final matrix. This was previously unaccounted for.
- The requirement is scaled by `min(ncores, len(contact_jobs))`. The check
  moved to just after the job list is built, which is the first point where
  the job count is known.
- Lookup failures are logged instead of being swallowed by a bare
  `except Exception`. That silence is why this went unnoticed.
- `get_available_memory()` now reports **total** physical memory rather than
  `psutil`'s `available`. On macOS `available` excludes the reclaimable page
  cache and compressed pages, so an idle 32 GB host reports 14–17 GB — meaning
  the old gate could flip between runs on identical input.

### Effect

| model | before | after |
|---|---|---|
| protprot (1780 heavy atoms) | 37.25 Gb | 36 MB |
| protlig (3041 heavy atoms)  | 37.25 Gb | 106 MB |
| protdna (961 heavy atoms)   | 37.25 Gb | 11 MB |

(Every "before" is identical because the estimate never read the files.)
The denominator goes from a fluctuating 14–17 Gb to a stable 32 Gb.

The gate is kept rather than removed — the `NxN` matrix is still quadratic and
can still exhaust memory on a large enough system. It should now trip only when
that is genuinely about to happen.

## How was this tested?

- `pytest tests/` — 1796 passed, 5 skipped
- `pytest integration_tests/` (contactmap and util subset) — 14 passed, 1 skipped
- `ruff check` and `ruff format --check` clean on all changed files
  (the 5 pre-existing `E721`/`F401` warnings in `tests/test_module_contmap.py`
  are unchanged from `main`)

The existing memory tests only asserted `memory > 0`, so they passed straight
through the broken fallback path and caught none of this. They now assert the
exact expected value against a reference formula. New tests:

- `test_count_heavy_atoms` — the count must equal what `extract_pdb_dt()`
  actually puts into the matrix, so the two cannot drift apart.
- `test_get_necessary_memory` — exact match for the *largest* of several
  models, plus a `< 0.1 Gb` bound that would have failed on the old code.
- `test_get_necessary_memory_uses_rel_path` — reproduces the real two-step run
  directory layout, asserts that the bare `file_name` does *not* resolve from
  the step folder, and that the estimate is correct anyway. This is the
  regression test for the actual bug.

Verified manually against a simulated run directory as well: with cwd at
`2_contactmap/` and the model in `1_prev/`, the old lookup fails and the new
one returns 36.3 MB.

## AI assistance

Diagnosis and implementation were done with Claude Code.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues



## Notes for reviewers

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2d1f5055467`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.