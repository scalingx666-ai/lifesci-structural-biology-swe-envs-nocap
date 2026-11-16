# Issue

**Title:** chore(deps): lock torch 2.12.1

## Description

Bumps the locked default-lane torch from 2.9.1 to 2.12.1 (triton 3.5.1 -> 3.7.1); pyproject constraints are unchanged and the CI torch matrix still tests 2.8-2.12 in full.

Why:
- Clears the low-severity `torch.lstm_cell` memory-corruption Dependabot advisory, which is patched in 2.10.0 — the earlier changelog note that both torch advisories required 2.13 no longer matches the updated advisory data. The `torch.jit.script` advisory remains open (patched only in 2.13, outside the supported matrix).
- The default CI lane now runs an inductor that carries the upstream fusion-legality fix (pytorch/pytorch#172301), the root cause behind both the silent scatter/gather miscompile and the CPU `try_loop_split` assertion worked around in #109.

The 2.12 matrix job has been green on every recent run, so this lane is already exercised per-commit.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ebaa592d05d7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.