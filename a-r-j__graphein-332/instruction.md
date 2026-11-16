# Issue

**Title:** Fix handing id when loading from path

## Description

#### What does this implement/fix? Explain your changes

Previously, the id for the pyg data object would become the entire (possibly length) path to the pdb file OR only the filename + chain ID. However, in the later case, the '.pdb' extension would still show up under the id field.

This commit fixes the above to be consistent and to not contain '.pdb' extension in the pyg data id.

#### What testing did you do to verify the changes in this PR?

I have made this fix during day-to-day work with graphein when loading pyg data from my own PDB files which are stored locally.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `281ce30cf424`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.