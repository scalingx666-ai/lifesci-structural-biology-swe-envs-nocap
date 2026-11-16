# Issue

**Title:** chore(pdb): Fix `clippy::large_const_arrays` warning in string test

## Description

Fixes the following clippy warning:

    error: large array defined as const
       --> src/pdb/string.rs:285:9
        |
    285 |         const HUMONGOUS_ARRAY: [u8; TOO_LARGE_STR_SIZE] = [INIT_CHAR as u8; TOO_LARGE_STR_SIZE];
        |         -----^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        |         |
        |         help: make this a static item: `static`
        |
        = help: for further information visit https://rust-lang.github.io/rust-clippy/master/index.html#large_const_arrays

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9c4b6f2935e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.