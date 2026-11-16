# Issue

**Title:** Download SIFTS maps over HTTP in PDBManager

## Description

#### Reference Issues/PRs

Fixes the `notebooks/creating_datasets_from_the_pdb.ipynb` notebook test failure (`URLError: <urlopen error [Errno 111] Connection refused>` in `PDBManager.__init__`).

#### What does this implement/fix? Explain your changes

`PDBManager` downloads two SIFTS maps (`pdb_chain_cath_uniprot.tsv.gz` and `pdb_chain_enzyme.tsv.gz`) from `https://ftp.ebi.ac.uk`. That host now refuses or times out connections on port 443, while HTTP (port 80) and FTP still serve the same files. This switches those two URLs (and their docstrings) to `http://`. The CATH domain list was already fetched over unencrypted `ftp://`.

Trade-off: the files are now downloaded without TLS. They are public metadata. If EBI brings HTTPS back, we can switch back.

#### What testing did you do to verify the changes in this PR?

- `curl` against `ftp.ebi.ac.uk`: `https://` refuses or times out; `http://` returns 206/200 for both files.
- `uv run --with torch --with torch_geometric python -c "from graphein.ml.datasets import PDBManager; m = PDBManager(root_dir=...); print(m.df.shape)"` gave `(1182292, 15)`, with both SIFTS files downloaded.
- `uv run ruff check` / `ruff format --check` on `pdb_data.py`: clean.
- Not run: the full nbval notebook suite (it downloads a lot); CI's `build` job covers it.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable): N/A, URL change only
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable): N/A
- [ ] Ran `python -m py.test tests/`: not run, see above
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d2c398c56f5d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.