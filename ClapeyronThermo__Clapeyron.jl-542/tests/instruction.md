# Issue

**Title:** Higher order implicit ad for roots

## Description

Adds [IFTDuals](https://github.com/Garren-H/IFTDuals.jl) as a dependency which handles the differentiation of root finders, with reference to  We can now handle mixed tags and higher order implicit AD efficiently. I took quite a lot of inspiration from the `Solvers` module to make the code non-allocating where possible.

Additionally, adjusted the association term to use `__gradients_for_root_finders` to handle AD where we do not have a closed form solution for the fraction of non-bonded sites, `X`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `303facb735c9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.