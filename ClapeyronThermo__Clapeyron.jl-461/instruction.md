# Issue

**Title:** Bug Fix (tp_flash): correct Michelsentp_flash -> MichelsenTPFlash to avoid `UndefVarError` when using flash_result

## Description

Fixes a typo in Michelsentp_flash.jl where `Michelsentp_flash` (non-existent) was called instead of the correct `MichelsenTPFlash`.

The typo triggers:
```
ERROR: UndefVarError: Michelsentp_flash not defined
```

It occurs when constructing `MichelsenTPFlash` from a `FlashResult` (via `flash_result = keyword`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `596e5142b3aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.