# Issue

**Title:** CI: remove micromamba setup left over from DSSP/Boost

## Description

#### Reference Issues/PRs

 (merges into its branch, `tensor-dssp`).

#### What does this implement/fix? Explain your changes

#483 computes DSSP natively and removes the DSSP and Boost install steps from `build.yaml`. That leaves the `Setup micromamba` step and the `bash -l {0}` default shell, which only existed to provide and activate a conda env for those packages. This PR removes both.

Nothing else used that env:
- Python comes from `setup-uv` (`python-version`).
- `uv sync` installs into `.venv`, and tests run with `uv run --no-sync`.
- `setup-uv` activates `.venv` (`VIRTUAL_ENV`), which `uv pip install` prefers over `CONDA_PREFIX`. So torch and PyG already installed into `.venv`, and that doesn't change.
- BLAST and MMseqs2 come from apt.

Not changed: `code-tests-docker.yaml` also sets up micromamba without using it, since everything there runs inside the container. It was never DSSP/Boost setup, so I've left it for a separate cleanup.

#### What testing did you do to verify the changes in this PR?

- The workflow YAML parses, and the remaining steps are unchanged.
- I can't run GitHub Actions locally, so this PR's CI run is the real test.

#### Pull Request Checklist

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable). Not added: this is CI-only.
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (if applicable)
- [ ] Checked for style issues by running `black .` and `isort .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ef86a214254`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.