# Issue

**Title:** minimal fix for delete_residues in mk_prepare_receptor.py

## Description

`--delete_residue` is an argument in mk_prepare_receptor.py to specify residues that won't be written to output. 

`del_res` in mk_prepare_receptor is a list and`extend` should be used instead of `update`. The PR is a minimal fix. 

Some additional work to improve this option: 
(1) Make the syntax consistent with --flexres, --reactive_flexres
Current syntax is: 
```
mk_prepare_receptor.py --macromol 1O0K_noNA.pdb --delete_residues '["A:1004", "A:1005"]' \
--skip_gpf --o 1O0K_output_1 --add_templates /Users/amyhe/Desktop/7_Mk_for_NA/Notebooks/lig_residue_templates.json --allow_bad_res
```
The same syntax & parsers for --flexres, --reactive_flexres could be used. 

(2) Skip the deleted residues, do not parameterize them at all. 
Currently, mk_prepare_receptor still attempts to infer the intermolecular bonds for and parameterize the deleted_residues. If these residues can be skipped and do not go through chorizo building, then his option will allow us to delete the residues and unwanted ions without having to prepare additional inputs

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `904f6a2a10ef`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.