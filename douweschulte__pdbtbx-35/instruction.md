# Issue

**Title:** Save 21.4MB in published crate by adding an include directive to manifest

## Description

…fest

Please let me know if there is any files you did indeed want to add to
the source crate itself and I can make adjustments.

Here is the output of `cargo diet` with the files that would not be
included anymore in future releases.
```
➜  pdbtbx git:(master) cargo diet
┌────────────────────────────┬─────────────┐
│ File                       │ Size (Byte) │
├────────────────────────────┼─────────────┤
│ .gitignore                 │          13 │
│ .github/workflows/rust.yml │         940 │
│ tests/waterbox.rs          │        1393 │
│ tests/read_write_pdbs.rs   │        2635 │
│ CODE_OF_CONDUCT.md         │        3347 │
│ example-pdbs/1ubq.pdb      │      105204 │
│ example-pdbs/liquid.pdb    │      113291 │
│ example-pdbs/3b5j.pdb      │      216351 │
│ example-pdbs/1yyf.pdb      │      850905 │
│ example-pdbs/pTLS-6484.pdb │    20127847 │
└────────────────────────────┴─────────────┘
Saved 97% or 21.4 MB in 10 files (of 22.1 MB and 37 files in entire crate)
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e743e6f5b52b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.