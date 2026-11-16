# Issue

**Title:** test: Add comprehensive test coverage for core modules

## Description

## Summary

- Add 6 new test files covering previously untested modules
- Expand existing calculator tests with edge cases and validation
- Increase test count from 18 to 152 tests (all passing)
- Target coverage improvement from ~39% toward 65%

## New Test Files

| File | Tests | Coverage |
|------|-------|----------|
| `tests/conftest.py` | - | Shared fixtures |
| `tests/test_nbops.py` | 25 | Neighbor operations (modes 0, 1, 2) |
| `tests/test_ops.py` | 34 | Math ops, cutoffs, Coulomb matrices |
| `tests/test_config.py` | 28 | YAML/Jinja2 loading, module building |
| `tests/test_lr.py` | 21 | Long-range Coulomb (simple, DSF, Ewald) |
| `tests/test_calculator_gpu.py` | 12 | GPU inference, memory, consistency |

## Expanded Calculator Tests

44 new tests in `test_calculator.py`:
- Input validation and error handling
- Coulomb method switching
- Batch processing (2D/3D formats)
- Force, Hessian calculations
- Translation/rotation invariance

## Test plan

- [x] Run `pytest tests/` - 152 tests passing
- [x] Run `make check` - linting passes
- [ ] Run GPU tests on CUDA machine: `pytest -m gpu`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `63018ade5e70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.