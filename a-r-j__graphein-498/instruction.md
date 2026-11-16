# Issue

**Title:** Keep atom charges when saving PDB files

## Description

#### Reference Issues/PRs

.

#### What does this implement/fix? Explain your changes

`cpdb>=0.3` returns the PDB charge column as written (`"2+"`, `"1-"`, blank). `save_graph_to_pdb`, `save_pdb_df_to_pdb` and `save_rgroup_df_to_pdb` convert it with `pd.to_numeric(df.charge, errors="coerce")`, so since #496 every charged atom (e.g. `ZN2+`, `CL1-`) becomes `NaN` and is saved with no charge. With `cpdb<0.3` the sign was already lost, because only column 79 was read (`"1-"` → `"1"` → `+1`).

This adds `pdb_charge_to_numeric` in `graphein/protein/utils.py`, which moves a trailing sign to the front before `to_numeric` and always returns floats:

| input | `"2+"` | `"1-"` | `"-1"` / `"+2"` / `"2"` | `""` / invalid | numeric |
|---|---|---|---|---|---|
| output | `2.0` | `-1.0` | `-1.0` / `2.0` / `2.0` | `NaN` | unchanged (as float) |

The three save functions use it in place of `pd.to_numeric`. Nothing else changes: uncharged atoms are still `NaN`, as before.

Related: I traced the Windows crash in #421 (process exits with `0xC0000409` on any PDB read) to `cpdb<=0.2.1` opening files with `fopen(..., "r, ccs=UTF-8")` and reading them with `fgets`, which the Windows CRT rejects. cpdb 0.3.x reads with Python `open(..., "rb")`. I confirmed on Windows 11 that 0.2.1 crashes and 0.3.0/0.3.1 parse `4hhb.pdb` fine, so #496 should also fix #421.

#### What testing did you do to verify the changes in this PR?

New tests in `tests/protein/test_utils.py`:

- `test_pdb_charge_to_numeric`, parametrised over `"2+"`, `"1-"`, `" 2+"`, `"-1"`, `"+2"`, `"2"`, `""` and an invalid value. Plus `test_pdb_charge_to_numeric_numeric_input`.
- `test_pdb_charge_to_numeric_from_cpdb`: real `cpdb.parse` output for `ZN2+` / `CL1-`.
- `test_save_pdb_df_to_pdb_keeps_charges`: saves a structure with `ZN2+` and `CL1-` via `save_pdb_df_to_pdb` (to `tmp_path`), reads it back with `read_pdb_to_dataframe`, and checks the charges are `2` and `-1`. With the current `pd.to_numeric` this fails with `[nan, nan] == [2.0, -1.0]`.

With `cpdb-protein==0.3.1` (Windows, Python 3.11): the 11 charge tests pass, and `tests/protein/test_utils.py` + `tests/protein/test_graphs.py` give 27 passed, 5 skipped. The only failures are the three existing `save_*` tests, which write to `/tmp/` (not present on Windows). I ran their logic against a temp directory instead and all three pass. ruff check/format clean.

Side note, not changed here: biopandas writes the charge with `"%+2.1f"`, so a charged line comes out 82 columns long (`...ZN 2.0`) rather than PDB-style `2+` in columns 79–80. It reads back correctly with cpdb, but other tools may not.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `ruff check --fix .` and `ruff format .`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c4cb2dfb81fe`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.