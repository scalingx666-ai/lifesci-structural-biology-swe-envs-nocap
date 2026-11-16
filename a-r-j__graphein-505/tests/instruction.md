# Issue

**Title:** Fix invalid YAML in code-style workflow

## Description

#### Reference Issues/PRs

. GitHub rejects `.github/workflows/code-style.yaml`: "You have an error in your yaml syntax on line 19". This was reported as a cause of the docs deployment failure.

#### What does this implement/fix? Explain your changes

Line 19 was `run: python -m pip install --only-binary :all: ruff==0.17.3 interrogate==1.7.0`. In a plain YAML scalar, `: ` starts a mapping, so `:all: ruff` made the file invalid. The command is now double-quoted. The command that runs is unchanged.

#### What testing did you do to verify the changes in this PR?

- `uv run --with pyyaml python -c "import yaml; yaml.safe_load(open('.github/workflows/code-style.yaml'))"` now parses, and the step's `run` value is the original command string.
- All files in `.github/workflows/` parse with `yaml.safe_load`.
- No Python changed, so I didn't run pytest or ruff. The workflow itself runs on this PR's push.

#### Pull Request Checklist

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable): not applicable, this is a CI-only change
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6cad347eaa58`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.