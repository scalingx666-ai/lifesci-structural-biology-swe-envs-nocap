# Issue

**Title:** Raise Python exception on FoX XML parse errors

## Description

## Summary
- Register a FoX error handler in `system_initialise` (`src/libAtoms/System.F90`) that routes parse errors through `system_abort`. When running under quippy this triggers `f90wrap_abort` → Python `RuntimeError`, so `try/except` around `Potential(param_filename=...)` now actually works.
- Bump `src/fox` submodule pointer to pick up the matching pluggable-handler hook (libAtoms/fox#4 — must merge first).
- Build wiring: `src/fox` is now built before `src/libAtoms`, and libAtoms `link_with`s fox to expose `FoX_set_error_handler`.
- New regression test `tests/test_fox_xml_errors.py` (subprocess-based, since the previous bug killed the interpreter).

## Bug
. Before this change, the reporter's reproducer silently exits with status 0 — `try/except` never runs:

```
ERROR(FoX)
Unexpected character found outside content (Possibly near line=0 col=2) ...
```

After:

```
caught exception: RuntimeError / FoX: Unexpected character found outside content ...
```

## Root cause
`FoX_error_base` in the fox submodule called Fortran `stop` directly, bypassing libAtoms' `system_abort` + `f90wrap_abort` chain. libAtoms now installs a pluggable handler in fox (via libAtoms/fox#4) so the chain reaches Python.

## Test plan
- [x] New `tests/test_fox_xml_errors.py` passes (runs the user's exact reproducer in a subprocess and asserts a caught exception).
- [x] Existing `tests/test_symbol_resolution.py::test_error_handling_raises_exceptions` (file-not-found case) still passes — verifies no regression in the existing error-propagation contract.
- [x] Full suite: `Ran 51 tests in 10.898s — OK (skipped=6)`.
- [x] Standalone Fortran callers unchanged — `system_abort` still ends in `stop 1` outside of quippy.

## Dependency
🔴 **libAtoms/fox#4 must merge first** — this PR's submodule pointer references a commit that exists only on that fox PR's branch. CI will fail to fetch the submodule until that PR lands.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f6acf680f18`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.