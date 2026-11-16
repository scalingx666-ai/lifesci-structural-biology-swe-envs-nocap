# Issue

**Title:** Vectorize per-step samples Labels construction

## Description

## Summary
- `FlashMDStepper.step()`, `_convert_atoms_to_system()`, and `SymplecticStepper`'s `_make_system()` each rebuilt the `["system", "atom"]` samples `Labels` from a Python-level list comprehension (`[[0, j] for j in range(n)]`) — once per momenta block and once more per masses block, up to 6 times across the codebase and up to twice per Anderson iteration in the symplectic path.
- That list-comprehension → `torch.tensor` conversion scales linearly with atom count and ends up dominating step time at larger system sizes.
- Replaced it with `torch.arange`/`torch.full`/`vstack`, the same idiom `metatomic_ase` already uses for this exact case, plus `assume_unique=True` (the `(0, j)` pairs are unique by construction, so this skips metatensor's uniqueness-validation pass).
- Also reused the one `Labels` object already built for the momenta block in each function instead of rebuilding an identical one for the masses block immediately after.

## Benchmark
On the plain `FlashMDStepper`: 5-step MD on bulk Si (diamond, 1000 K initial velocities), `pet-omatpes-v2` @ 16 fs, RTX 4070 Ti Super:

| atoms | before (ms/step) | after (ms/step) | speedup |
|------:|------------------:|-----------------:|--------:|
| 100 | 12.01 | 11.59 | 1.04x |
| 400 | 22.51 | 21.34 | 1.05x |
| 1600 | 69.74 | 64.76 | 1.08x |
| 6400 | 267.05 | 240.54 | 1.11x |
| 25600 | 1083.72 | 964.03 | 1.12x |

Speedup grows with system size since the removed cost was genuinely `O(n)` (confirmed with an isolated microbenchmark of just the `Labels` construction, which matches the observed end-to-end savings within ~10-15% at every size). Peak GPU memory is unchanged or slightly lower (`assume_unique=True` skips building an internal uniqueness index).

## Test plan
- [x] `pytest tests/` passes (13/13)
- [x] Verified vectorized `Labels` construction is bit-identical to the old list-comprehension version
- [x] Manually verified mid-run atom removal/addition still works correctly (no caching introduced)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e36831302613`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.