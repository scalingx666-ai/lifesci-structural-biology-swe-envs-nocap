# Issue

**Title:** Fix sdist/wheel shipping no Python code; remove MANIFEST.in

## Description

#### Reference Issues/PRs

Regression from #451 (switch to hatchling).

#### What does this implement/fix? Explain your changes

**Bug:** `uv build` on master produces a package with no code.
- `[tool.hatch.build.targets.sdist] include` is a whitelist, and it only listed `/README.md`, `/LICENSE` and the two CSVs. So the sdist contained 7 files and **no `.py` files**.
- `uv build` builds the wheel from the sdist, so **the wheel had no `.py` files either**.
- `autopublish.yaml` runs exactly `uv build` on tag push and uploads to PyPI, so the next release would have been an empty package. `twine check --strict` only validates metadata, so it doesn't catch this.
- v1.7.8 predates #451, so no broken release has been published.

**Fix:** include `/graphein` in the sdist. That also covers the two CSVs, so their explicit entries are dropped.

**Also:** remove `MANIFEST.in`. Hatchling ignores it, and the sdist config above has taken over its job.

#### What testing did you do to verify the changes in this PR?

`uv build` before and after:

| | sdist `.py` | wheel `.py` | CSVs |
|---|---|---|---|
| master | 0 | 0 | 2 |
| this PR | 122 (every tracked `.py` under `graphein/`) | 122 | 2 |

- `twine check --strict` passes.
- The built wheel installs, and both CSVs are readable from the installed package via `importlib.resources`.

A CI check that builds the wheel and fails on a missing package would stop this regressing, but it's left out here to keep the PR small.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (if applicable). Packaging-only change, verified by building as above.
- [ ] Checked for style issues by running `black .` and `isort .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `22c4cf58c69e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.