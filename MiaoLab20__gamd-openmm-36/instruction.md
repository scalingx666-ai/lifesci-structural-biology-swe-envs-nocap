# Issue

**Title:** Fix/nan errors in boost calculations

## Description

## Fix NaN errors in boost calculations

### Problem
The GaMD boost calculations were failing with NaN errors in edge cases:
- Division by zero when `windowCount` equals zero in `sigmaV` calculation
- Division by zero when energy variation is zero in `k0prime` calculation  
- Division by zero when `sigmaV` is zero in `BoostPotential` calculation

### Solution
Added robust NaN protection using `select` statements in `gamd/langevin/base_integrator.py`:
- **sigmaV calculation**: Returns 0.0 when `windowCount` is 0
- **k0prime calculation**: Returns 0.0 when energy variation is 0
- **BoostPotential calculation**: Returns 0.0 when `sigmaV` is 0

### Technical Details
- Uses OpenMM's `select(condition, value_if_true, value_if_false)` for safe conditional evaluation
- Maintains numerical stability without masking legitimate computation errors
- Preserves existing calculation logic for normal cases

### Testing
- Added comprehensive test suite (`test_nan_fix.py`) covering all edge cases
- All existing tests continue to pass
- Edge cases now handle gracefully without NaN propagation

### Impact
- **Critical**: Prevents simulation crashes from numerical instabilities
- **Safe**: Does not mask legitimate errors, only handles mathematical edge cases
- **Backward Compatible**: No changes to existing API or behavior for normal cases

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb738c9037a4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.