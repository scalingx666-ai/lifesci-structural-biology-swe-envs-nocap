# Issue

**Title:** Minimal Fixes for --reactive_flexres and --box_center_off_reactive_res

## Description

This PR includes some minimal changes and updates of relevant help messages to support `--reactive_flexres` and `--box_center_off_reactive_res` and to enable writing of reactive atom types in the output `_flex.pdbqt`. 


The changes are: 

## 1. Fix --reactive_flexres
Before the changes, `reactive_flexres` (dict) and `all_flexres` (set) had inconsistent types and were therefore [not mergeable](https://github.com/forlilab/Meeko/blob/8963c1048e6c3c6edcfdb151cbbb6019d19db1d6/scripts/mk_prepare_receptor.py#L463) by `union`. 

This issue was addressed by first creating a dictionary `reactive_flexres_name` and then a set `reactive_flexres` for the interoperability with the existing functions. 

The parser `parse_residue_string` was still used for `--reactive_flexres` to be able to pass the residue names and compare to the [default atom name specification of reactive_atom](https://github.com/forlilab/Meeko/blob/8963c1048e6c3c6edcfdb151cbbb6019d19db1d6/scripts/mk_prepare_receptor.py#L387). 


## 2. Enable writing reactive atom types to _flex.pdbqt
Before the changes, the reactive atom types were not written to the output file _flex.pdbqt. 

This issue was resolved with minimal edits, even though `PDBQTReceptor.make_flexres_reactive` was still used to update `flexres_pdbqt` for the reactive flexible residues. 


## 3. Uncomment --reactive_name
Before the changes, processing of `--reactive_name` was commented even though the argument was available. 

This issue was resolved with some organization of the codes, to ensure that the options are applied in the following order: 
(1) `--reactive_name` may overwrite the default name set of `reactive_atom`;
(2) `--reactive_flexres` must only contain the residue names that are specified by the default name set; 
(3) `--reactive_name_specific` can be used to overwrite an existing or add a new reactive flexible residue. 


## 4. Fix --box_center_off_reactive_res and Clean Up Argument Dependency Evaluations
The changes affected parsing of reactive flexible residues and hereby minor edits to the handling of box_center_off_reactive_res were applied. Additionally, the changes addressed the argument dependency issue that `--box_center_off_reactive_res` requires `box_size`. Some redundant argument dependency evaluations were cleaned up. 


## 5. Update help msg
(1) For `--flexres`, multiple residues may be passed at once and unspecified chain ID should be skipped (no space kept). 
(2) For `--reactive_flexres`, the expected syntax after the changes is: 
`-r "A:LYS:100" -r "A:LYS:255"`
Because `parse_residue_string` needs exactly 2 delimiters (:), the flag needs to be repeated for each reactive flexible residue. 
(3) For `--box_center_off_reactive_res`, it needs exactly one reactive flexible residue and requires box_size. 


## Two quick tests to validate the above changes

Input: 
[1d3g_input.zip](https://github.com/user-attachments/files/16755192/1d3g_input.zip)

(a) Regarding usage of --reactive_flexres, --reactive_name, and --reactive_name_specific
`mk_prepare_receptor.py --pdb 1d3g_input/1d3g_receptor.pdb --allow_bad_res --reactive_flexres "A:LYS:100" --reactive_flexres "A:LYS:255" --flexres "A:145,356" --ligand 1d3g_input/1d3g_FMN.pdb --padding 2 --reactive_name "LYS:CG" --reactive_name_specific "A:LYS:255:NZ" --output_filename 1d3g_output_a`

Output: 
[output_a.zip](https://github.com/user-attachments/files/16755193/output_a.zip)

(b) Regarding the use of --box_center_off_reactive_res
`mk_prepare_receptor.py --pdb 1d3g_input/1d3g_receptor.pdb --allow_bad_res --reactive_flexres "A:LYS:255" --reactive_name "LYS:CG" --flexres "A:145,356" --box_center_off_reactive_res --box_size 50 50 50 -o 1d3g_output_b`

Output: 
[output_b.zip](https://github.com/user-attachments/files/16755194/output_b.zip)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `499587bd9b21`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.