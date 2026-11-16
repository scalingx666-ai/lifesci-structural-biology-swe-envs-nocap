# Issue

**Title:** fix(deps): bump Mako, pytest, cryptography, Pygments for security advisories

## Description

## Summary

Closes the four open Dependabot alerts on `uv.lock`:

| # | Severity | Package | Bump | Advisory |
|---|----------|---------|------|----------|
| #23 | Medium | Mako | 1.3.10 → 1.3.11 | [GHSA-v92g-xgxw-vvmm](https://github.com/advisories/GHSA-v92g-xgxw-vvmm) — path traversal in `TemplateLookup` |
| #22 | Medium | pytest | 9.0.2 → 9.0.3 | [GHSA-6w46-j5rx-g56g](https://github.com/advisories/GHSA-6w46-j5rx-g56g) — vulnerable `tmpdir` handling |
| #21 | Medium | cryptography | 46.0.6 → 47.0.0 | [GHSA-p423-j2cm-9vmq](https://github.com/advisories/GHSA-p423-j2cm-9vmq) — buffer overflow on non-contiguous buffers |
| #19 | Low | Pygments | 2.19.2 → 2.20.0 | [GHSA-5239-wwwm-4pmq](https://github.com/advisories/GHSA-5239-wwwm-4pmq) — ReDoS in GUID regex |

All four packages are transitive dependencies — only `pyproject.toml`'s `pygments<2.21` cap is a direct constraint, and the patched 2.20.0 satisfies it. Lockfile bumped via:

```
uv lock --upgrade-package mako --upgrade-package pytest \
        --upgrade-package cryptography --upgrade-package pygments
```

`cryptography` resolved to 47.0.0 (the next stable major), which is above the 46.0.7 patched version and fully addresses the advisory.

## Test plan

- [x] `make check` (ruff, markdownlint, prettier, codespell, deptry) — passed
- [x] Full pytest suite with `-n 4` — 328 passed, 1 skipped (initial `-n auto` run had CUDA OOM contention from oversubscribed GPU; reduced parallelism resolves it — unrelated to these bumps)
- [ ] CI: quality / core / ASE / train / pysis / GPU / docs jobs (each runs in isolation, no GPU contention)

Resolves Dependabot alerts #19, #21, #22, #23.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `46e9eeaf9e8e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.