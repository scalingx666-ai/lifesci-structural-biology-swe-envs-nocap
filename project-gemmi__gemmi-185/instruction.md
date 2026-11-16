# Issue

**Title:** Binner: add get_bin_number_from_1_d2 etc

## Description

In addition, I think cell should be always given when setup or there should be a flag, because `get_bin_numbers()` may be called even when binner was setup without cell.

I also added python binding for `binner.setup_from_1_d2`, but it was much slower. Probably memory copy occurred? Do you know how to improve this?
```py
In []: %timeit binner.setup(20, gemmi.Binner.Method.Dstar2, mtz)
       29.1 ms ± 291 µs per loop (mean ± std. dev. of 7 runs, 10 loops each)

In []: %timeit binner.setup_from_1_d2(20, gemmi.Binner.Method.Dstar2, mtz.make_1_d2_array())
       224 ms ± 2.46 ms per loop (mean ± std. dev. of 7 runs, 1 loop each)
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `653b7754f876`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.