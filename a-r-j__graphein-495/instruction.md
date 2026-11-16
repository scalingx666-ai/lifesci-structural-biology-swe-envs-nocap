# Issue

**Title:** Remove unused .gitattributes

## Description

`.gitattributes` has a single rule:

```
graphein/_version.py export-subst
```

It was added for versioneer in 2021 (91401cf) so `git archive` would fill in the version string in `graphein/_version.py`. That file was deleted in #276, and the version now comes from `__version__` in `graphein/__init__.py` via `[tool.hatch.version]` in `pyproject.toml`, so the rule matches nothing.

Also adds a changelog entry under 1.7.9 Misc.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6b505f625f6f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.