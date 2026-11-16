# Issue

**Title:** `PDBManager` - Bug fixes, adding necessary changes to export only first PDB model, and merging-in latest updates from `master`

## Description

#### Reference Issues/PRs

@a-r-j, I noticed that our (new) default function for exporting collated groups of PDB chains does not currently export only the first model for each PDB complex file. I've added the necessary changes to make this happen, and I also added a workaround that's needed when exporting (i.e., calling `to_pdb()` on) PandasPdb objects that have had a `model_id` column added to them. In the long term, I think it'd be good to have a fix merged into the `master` branch of `BioPandas` that types the `model_id` column as a `str` -> `object` column, but this workaround I've proposed should work for now.

_Originally posted by @amorehead in 
            

@a-r-j, note that this PR also includes a fix for dataset-splitting edge cases where you only select one splitting strategy (e.g., time-based splitting) and then try to download and export your selected PDBs. Currently, if you try to export such PDBs, the download and export functions will throw an error saying that your selected PDBs are not labeled correctly according to which split to which they are assigned. The fix for this is simple: track split names per PDB entry more thoroughly by installing them within individual splitting functions (e.g., `split_df_into_time_frames`). If you are good with these changes, please feel free to go ahead and merge these changes into `master` after testing them on your end.

_Originally posted by @amorehead in 
            
#### What does this implement/fix? Explain your changes

#### What testing did you do to verify the changes in this PR?


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af2b2e0679ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.