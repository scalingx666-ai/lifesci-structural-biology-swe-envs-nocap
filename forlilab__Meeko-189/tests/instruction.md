# Issue

**Title:** small fixes to guard against KeyError and UnboundLocalError

## Description

The PR has two small fixes to protect from KeyError and UnboundLocalError

1- When an unsupported element is up for intermol bond evaluation, and it doesn't have an implemented covalent radius (which won't have an AutoDock atom type either)

```
(mk_dev) amyhe@Amys-MBP Suraj % mk_prepare_receptor.py --pdb 3owz.pdb -o 3owz --add_templates additional_templates.json --skip_gpf --allow_bad_res 
/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py:4: DeprecationWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html
  __import__('pkg_resources').require('meeko==0.6.0a3')
templates=<meeko.linked_rdkit_chorizo.ResidueChemTemplates object at 0x147c150f0>
Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/Users/amyhe/Desktop/0_forks/Meeko/scripts/mk_prepare_receptor.py", line 457, in <module>
    chorizo = LinkedRDKitChorizo.from_pdb_string(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 767, in from_pdb_string
    bonds = find_inter_mols_bonds(raw_input_mols)
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 183, in find_inter_mols_bonds
    + covalent_radius[a2.GetAtomicNum()]
KeyError: 77
```


2- When a residue name has just a single template in ambiguous dict
```
(mk_dev) amyhe@Amys-MBP Suraj % mk_prepare_receptor.py --pdb 3owz_noIRI.pdb -o 3owz_noIRI --add_templates additional_templates.json --skip_gpf --allow_bad_res
/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py:4: DeprecationWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html
  __import__('pkg_resources').require('meeko==0.6.0a3')
templates=<meeko.linked_rdkit_chorizo.ResidueChemTemplates object at 0x16bfe90f0>
Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/Users/amyhe/Desktop/0_forks/Meeko/scripts/mk_prepare_receptor.py", line 457, in <module>
    chorizo = LinkedRDKitChorizo.from_pdb_string(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 774, in from_pdb_string
    chorizo = cls(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 677, in __init__
    self.residues, self.log = self._get_residues(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 1157, in _get_residues
    for index, template in enumerate(candidate_templates):
UnboundLocalError: local variable 'candidate_templates' referenced before assignment
```

because of 
```
    "ambiguous": {
        "GTP": ["GTP5p"],
        "GDP": ["GDP5p"],
        "CCC": ["CCC3"],
        "A23": ["A233"],
        "23G": ["23G3"]
    },
```
This might become a little more common if in future the ambiguous dict is also used to map the force field residue name with our internal template name, which can be a CCD component name or a name with suffix.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ae8b5f51568`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.