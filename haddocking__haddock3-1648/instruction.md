# Issue

**Title:** Fix DEBUG logging leak and global warning suppression - Issue #1647

## Description

## What does this PR do and why?

DEBUG log records were leaking to the console even when the log level was not set to DEBUG (e.g. `[... libalign DEBUG] Sequence identity ...`, `[... libio DEBUG] removing: ...`).

Root cause: `haddock/__init__.py` sets the shared `haddock` logger to `DEBUG` and attaches a stdout `StreamHandler` **without a level**, so the handler emitted everything down to DEBUG. The main CLI hides this because `add_log_for_CLI()` clears and re-adds properly-levelled handlers, but any code path that never calls it — notably parallel worker subprocesses that re-import `haddock` — keeps the wide-open default handler and dumps DEBUG to stdout.

Fixes in this PR:

- **`haddock/__init__.py`**: cap the default stdout handler at `INFO`. The logger stays at `DEBUG` so `--log-level DEBUG` still works once `add_log_for_CLI()` reconfigures the handlers.
- **`libs/libaa2cg.py`**: the module ran `warnings.filterwarnings("ignore")` at import time, silencing **every** Python warning (`DeprecationWarning`, numpy `RuntimeWarning`, ...) process-wide as a side effect of import. Because `libaa2cg` is imported by `caprieval`/`caprifilter`/`topocg`, this affected most runs. Scoped the filter to `BiopythonWarning` (its original intent — quieting Biopython's PDB-parsing noise), matching the targeted pattern already used in `libgrid.py`.
- **`libs/libaa2cg.py`**: replaced a bare `except:` with `except Exception:` in the DSSP secondary-structure assignment (ruff E722); it no longer swallows `KeyboardInterrupt`/`SystemExit`.

## How was this tested?

- Verified the default handler now suppresses DEBUG while still showing INFO/WARNING/ERROR, and that `add_log_for_CLI(log, "DEBUG", ...)` still emits DEBUG when explicitly requested.
- Verified the scoped warnings filter suppresses `BiopythonWarning` while `DeprecationWarning`/`RuntimeWarning` are again visible.
- `ruff check` passes on the changed files; the affected unit tests pass (`pytest tests/ -k "aa2cg or capri or topocg or log"` → 95 passed).

## AI assistance

The leak was diagnosed and the fixes drafted with help from Claude. The code changes and verification steps were manually reviewed.

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1647

## Notes for reviewers

No new tests were added — the changes are to import-time logging/warning state, which the existing suite already exercises. All three fixes share the same underlying anti-pattern: a module mutating global logging/warning state as an import side effect.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `81426652dd95`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.