# Issue

**Title:** feat(cli): add built-in default configs

## Description

#### Reference Issues/PRs

.  (the CLI).

#### What does this implement/fix? Explain your changes

`graphein -c` only accepted a path to an existing YAML file, and the package shipped no default configs, so every user had to write a config from scratch. #123 asks for packaged configs implementing graph construction schemes from the literature.

This PR adds the built-in config mechanism and a first default config:

- `graphein/configs/__init__.py`: `CONFIG_DIR`, `available_configs()` and `resolve_config_path()`. An existing path always wins over a built-in name; unknown names raise `ValueError` listing what is available.
- `graphein/configs/default.yml`: residue-level (C-alpha) graph with peptide bonds and a 10 Å distance threshold. It mirrors `tests/utils/test_protein_graph_config.yml` but omits node features that need network services, so a graph can be built offline.
- `graphein/cli.py`: `-c` now accepts either a built-in name or a path, and `--list-configs` prints the bundled names. Unknown names surface as a `click.BadParameter` error.

Scope note: this is the first step for #123 — the mechanism plus one default config. I have not claimed to reproduce any of the four papers' exact hyperparameters; the config is derived from the config already in this repository. I'm happy to add paper-specific configs once the parameters are agreed.

#### What testing did you do to verify the changes in this PR?

Python 3.12.14 / uv / macOS (Apple M5). Note: `uv sync --extra dev` cannot build `bioservices` from sdist in this environment (the sandbox blocks its bulk-delete cleanup), so the remaining dev dependencies were installed with `--no-install-package bioservices` and a prebuilt `bioservices` wheel was added for local verification. **No dependency changes are included in this PR.**

- Red first: `pytest tests/utils/test_default_configs.py` → collection error, `ModuleNotFoundError: No module named 'graphein.configs'`.
- Green after: `.venv/bin/python -m pytest tests/utils/test_default_configs.py -o addopts="" -q` → **7 passed**.
- Regression: `.venv/bin/python -m pytest tests/utils/test_cli.py tests/utils/test_yml_parser.py -o addopts="" -q` → **2 passed**.
- `.venv/bin/ruff format --check <changed files>` → 3 files already formatted.
- `.venv/bin/ruff check <changed files>` → All checks passed.
- Not run: the full `pytest tests/` suite (many tests download structures from RCSB, and torch / PyG / DGL / DSSP are optional per `AGENTS.md`) and the docs build. The end-to-end CLI test in this PR uses the local `4hhb.pdb` fixture and passes offline.

#### Pull Request Checklist

- [x] Added a note about the modification to `./CHANGELOG.md`
- [x] Added appropriate unit tests in `./tests/utils/`
- [ ] Modified a documentation notebook (not applicable: CLI-only change; `--help` text is updated)
- [x] Ran the relevant test files; full suite not run, reason stated above
- [x] Checked style with `ruff check` and `ruff format` on all changed files

---

Prepared with AI assistance; the red/green verification and style checks above were run locally.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `381f07c1a9f5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.