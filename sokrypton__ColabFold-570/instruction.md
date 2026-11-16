# Issue

**Title:** Update utils.py

## Description

[7qvs_1927.pdb.txt](https://github.com/sokrypton/ColabFold/files/14240104/7qvs_1927.pdb.txt)
Make convert_pdb_to_mmcif() function work for custom templates with chains consisting only of HETATMs (chains 'B', 'C', 'E', 'F' for 7qvs_1927.pdb).  
ColabFold dies and throws a KeyError:

  File "ColabFold/colabfold/utils.py", line 208, in _save_dict
    label_asym_id = asym_id_auth_to_label[chain.get_id()]
KeyError: 'B'

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0cf2621921f2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.