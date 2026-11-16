# Issue

**Title:** idiomatic naming: changing `amount_*s` to `*_count`

## Description

It's idiomatic to name the method that count the number of items in a collection `<item>_count`, as exemplified in [std](https://doc.rust-lang.org/std/?search=count) and some [non-std crates](https://docs.rs/petgraph/0.5.1/petgraph/?search=count)

Also, "amount" is used with uncountables in English, "count" or "number" are used with countables.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `216b855dcc97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.