# Issue

**Title:** change mmseqs pdb data path

## Description

#### Reference Issues/PRs
<!--
-->

#### What does this implement/fix? Explain your changes

Problem: the [demo notebook](https://colab.research.google.com/github/a-r-j/graphein/blob/master/notebooks/creating_datasets_from_the_pdb.ipynb#scrollTo=lZhvHAUBVMuQ) as well as local tests fail when one tries to use pdb_manager for clustering with the following `mmseqs2` error:

`FileNotFoundError: [Errno 2] No such file or directory: 'pdb_cluster_rep_seq_id_0.3_c_0.8.fasta'`

This is due to [this line](https://github.com/a-r-j/graphein/blob/6dae5ff114a40410566f6fea4e558b2b9a6ba580/graphein/ml/datasets/pdb_data.py#L1385), where only `fasta_fname` is passed to mmseqs, but it should be the whole path `str(self.root_dir / fasta_fname)` to which the fasta file was written.


#### What testing did you do to verify the changes in this PR?

Locally making this change and running again allows successful clustering.


#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6dae5ff114a4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.