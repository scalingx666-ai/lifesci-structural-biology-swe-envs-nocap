# Issue

**Title:** Guess linker

## Description

This PR may supersede #204. It handles unbound cofactors and modified AA and NA linking fragements if no backbone modifications occur. Example output: 

```
(mk_dev) amyhe@Amys-MBP Downloads % mk_prepare_receptor.py -i 1iv8.pdb -o 1iv8_output -j 
/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py:4: DeprecationWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html
  __import__('pkg_resources').require('meeko==0.6.0a3')
@> 6379 atoms and 1 coordinate set(s) were parsed in 0.03s.
DEBUG:.prody:6379 atoms and 1 coordinate set(s) were parsed in 0.03s.
Input residues {'A:27': 'MLZ', 'A:105': 'MLZ', 'A:108': 'MLZ', 'A:109': 'MLY', 'A:111': 'MLY', 'A:206': 'MLY', 'A:216': 'MLY', 'A:250': 'MLY', 'A:310': 'MLZ', 'A:326': 'MLZ', 'A:390': 'MLY', 'A:467': 'MLZ', 'A:504': 'MLY', 'A:508': 'MLZ', 'A:513': 'MLZ', 'A:519': 'MLZ', 'A:558': 'MLY', 'A:616': 'MLY', 'A:638': 'MLZ'} not in residue_templates

Trying to resolve unknown residues by building chemical templates... 
WARNING:root:Atom # 0 (N) in mol doesn't have implicit Hs -> continue with next atom... 
WARNING:root:Molecule doesn't contain wanted_smarts: [NX3h1] -> continue with next pattern... 
WARNING:root:Molecule doesn't contain pattern: [NX3h1] -> linker label for N-term will not be made. 
WARNING:root:Molecule doesn't contain wanted_smarts: [CX3h1] -> continue with next pattern... 
WARNING:root:Molecule doesn't contain pattern: [CX3h1] -> linker label for C-term will not be made. 
******************** New Template Built ********************
{
    "ambiguous": {
        "MLZ": ["MLZ_"]
    },
    "residue_templates": {
        "MLZ_": {
            "smiles": "[H]NC([H])(C=O)C([H])([H])C([H])([H])C([H])([H])C([H])([H])N([H])C([H])([H])[H]",
            "atom_name": ["H2", "N", "CA", "HA", "C", "O", "CB", "HB2", "HB3", "CG", "HG2", "HG3", "CD", "HD2", "HD3", "CE", "HE2", "HE3", "NZ", "HZ", "CM", "HCM1", "HCM2", "HCM3"],
            "link_labels": {"1": "N-term", "4": "C-term"}
        }
    }
}
************************************************************
******************** New Template Built ********************
{
    "ambiguous": {
        "MLZ": ["MLZ_N"]
    },
    "residue_templates": {
        "MLZ_N": {
            "smiles": "[H]N(C([H])([H])[H])C([H])([H])C([H])([H])C([H])([H])C([H])([H])C([H])(C=O)N([H])[H]",
            "atom_name": ["HZ", "NZ", "CM", "HCM1", "HCM2", "HCM3", "CE", "HE2", "HE3", "CD", "HD2", "HD3", "CG", "HG2", "HG3", "CB", "HB2", "HB3", "CA", "HA", "C", "O", "N", "H", "H2"],
            "link_labels": {"20": "C-term"}
        }
    }
}
************************************************************
******************** New Template Built ********************
{
    "ambiguous": {
        "MLZ": ["MLZ_C"]
    },
    "residue_templates": {
        "MLZ_C": {
            "smiles": "[H]NC([H])(C(=O)[O-])C([H])([H])C([H])([H])C([H])([H])C([H])([H])N([H])C([H])([H])[H]",
            "atom_name": ["H2", "N", "CA", "HA", "C", "O", "OXT", "CB", "HB2", "HB3", "CG", "HG2", "HG3", "CD", "HD2", "HD3", "CE", "HE2", "HE3", "NZ", "HZ", "CM", "HCM1", "HCM2", "HCM3"],
            "link_labels": {"1": "N-term"}
        }
    }
}
************************************************************
WARNING:root:Atom # 0 (N) in mol doesn't have implicit Hs -> continue with next atom... 
WARNING:root:Molecule doesn't contain wanted_smarts: [NX3h1] -> continue with next pattern... 
WARNING:root:Molecule doesn't contain pattern: [NX3h1] -> linker label for N-term will not be made. 
WARNING:root:Molecule doesn't contain wanted_smarts: [CX3h1] -> continue with next pattern... 
WARNING:root:Molecule doesn't contain pattern: [CX3h1] -> linker label for C-term will not be made. 
******************** New Template Built ********************
{
    "ambiguous": {
        "MLY": ["MLY_"]
    },
    "residue_templates": {
        "MLY_": {
            "smiles": "[H]NC([H])(C=O)C([H])([H])C([H])([H])C([H])([H])C([H])([H])N(C([H])([H])[H])C([H])([H])[H]",
            "atom_name": ["H2", "N", "CA", "HA", "C", "O", "CB", "HB2", "HB3", "CG", "HG2", "HG3", "CD", "HD2", "HD3", "CE", "HE2", "HE3", "NZ", "CH1", "HH11", "HH12", "HH13", "CH2", "HH21", "HH22", "HH23"],
            "link_labels": {"1": "N-term", "4": "C-term"}
        }
    }
}
************************************************************
******************** New Template Built ********************
{
    "ambiguous": {
        "MLY": ["MLY_N"]
    },
    "residue_templates": {
        "MLY_N": {
            "smiles": "[H]N([H])C([H])(C=O)C([H])([H])C([H])([H])C([H])([H])C([H])([H])N(C([H])([H])[H])C([H])([H])[H]",
            "atom_name": ["H", "N", "H2", "CA", "HA", "C", "O", "CB", "HB2", "HB3", "CG", "HG2", "HG3", "CD", "HD2", "HD3", "CE", "HE2", "HE3", "NZ", "CH1", "HH11", "HH12", "HH13", "CH2", "HH21", "HH22", "HH23"],
            "link_labels": {"5": "C-term"}
        }
    }
}
************************************************************
******************** New Template Built ********************
{
    "ambiguous": {
        "MLY": ["MLY_C"]
    },
    "residue_templates": {
        "MLY_C": {
            "smiles": "[H]NC([H])(C(=O)[O-])C([H])([H])C([H])([H])C([H])([H])C([H])([H])N(C([H])([H])[H])C([H])([H])[H]",
            "atom_name": ["H2", "N", "CA", "HA", "C", "O", "OXT", "CB", "HB2", "HB3", "CG", "HG2", "HG3", "CD", "HD2", "HD3", "CE", "HE2", "HE3", "NZ", "CH1", "HH11", "HH12", "HH13", "CH2", "HH21", "HH22", "HH23"],
            "link_labels": {"1": "N-term"}
        }
    }
}
************************************************************

Files written:
1iv8_output.json <-- parameterized receptor
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1adb81a19e02`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.