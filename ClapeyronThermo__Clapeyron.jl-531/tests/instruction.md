# Issue

**Title:** chore: replace JSON3 with JSON.jl (and stabilize HANNA vocab ordering)

## Description

## Summary
- Replace Clapeyron’s direct JSON parsing dependency from JSON3.jl to JSON.jl.
- Keep changes minimal.
- Fix ClapeyronHANNA tokenizer vocab loading to be ordered by id (avoids Dict iteration-order issues).

## Changes
- Project deps: swap JSON3 → JSON in `Project.toml` and `lib/ClapeyronHANNA/Project.toml` (compat set to `JSON = "1"`).
- EmpiricHelmholtz JSON parsing: replace `JSON3.read` with `JSON.parse(...; dicttype=Dict{Symbol,Any})` so existing `:key` access patterns keep working.
- COSMOSAC NIST metadata: replace `JSON3.read(meta)` with `JSON.parse(meta)` (string-keyed access unchanged).
- ClapeyronHANNA: replace JSON3 usage; build ordered vocab by id from `vocab.json` before constructing the tokenizer.

## Local validation
- Local smoke tests passed; waiting for CI results to confirm full test coverage.

## Note for maintainers
- If you see `Pkg.resolve` compat errors due to an older pinned JSON version, please delete the repository’s `Manifest.toml` (and any local pinned manifests) and run `Pkg.resolve()` / `Pkg.instantiate()` again to re-resolve with the updated compat.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a914c2ae16b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.