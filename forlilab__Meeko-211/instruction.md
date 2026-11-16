# Issue

**Title:** Blunt end fix

## Description

Previously, the forgiving of bonded_atoms_missing in template matching allows residues nearby a gap to pass without manual specification of blunt ends. However, this is also causing multiple matches for CYX (disulfide-bond forming cystine): 

Input file: 
[1iep_receptorH.pdb](https://github.com/ccsb-scripps/AutoDock-Vina/blob/develop/example/basic_docking/data/1iep_receptorH.pdb)

```
(has_espaloma) amyhe@Amys-MBP output % mk_prepare_receptor.py -i 1iep_receptorH.pdb -o 1iep_receptor -p -v --box_size 20 20 20 --box_center 15.190 53.903 16.917
/Users/amyhe/micromamba/envs/has_espaloma/bin/mk_prepare_receptor.py:4: DeprecationWarning: pkg_resources is deprecated as an API. See https://setuptools.pypa.io/en/latest/pkg_resources.html
  __import__('pkg_resources').require('meeko==0.6.0a3')
@> 4412 atoms and 1 coordinate set(s) were parsed in 0.02s.
DEBUG:.prody:4412 atoms and 1 coordinate set(s) were parsed in 0.02s.
ERROR:meeko.linked_rdkit_chorizo:for residue_key='A:305', 3 have passed
these are: ['CYS', 'CYX', 'CYX-']
and were evaluated for the number of missing Hhowever there was a tie between
ERROR:meeko.linked_rdkit_chorizo:for residue_key='A:330', 3 have passed
these are: ['CYS', 'CYX', 'CYX-']
and were evaluated for the number of missing Hhowever there was a tie between
ERROR:meeko.linked_rdkit_chorizo:for residue_key='A:369', 3 have passed
these are: ['CYS', 'CYX', 'CYX-']
and were evaluated for the number of missing Hhowever there was a tie between
ERROR:meeko.linked_rdkit_chorizo:for residue_key='A:464', 3 have passed
these are: ['CYS', 'CYX', 'CYX-']
and were evaluated for the number of missing Hhowever there was a tie between
ERROR:meeko.linked_rdkit_chorizo:for residue_key='A:475', 3 have passed
these are: ['CYS', 'CYX', 'CYX-']
and were evaluated for the number of missing Hhowever there was a tie between
WARNING:meeko.linked_rdkit_chorizo:No template matched for residue_key='A:498'
tried 3 templates for residue_key='A:498'excess_H_ok=False
GLN        heavy_miss=0 heavy_excess=0 H_excess=1 bond_miss={0} bond_excess=set()
NGLN       heavy_miss=0 heavy_excess=0 H_excess=1 bond_miss={0} bond_excess={4}
CGLN       heavy_miss=1 heavy_excess=0 H_excess=1 bond_miss=set() bond_excess=set()

Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/has_espaloma/bin/mk_prepare_receptor.py", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/Users/amyhe/Desktop/0_forks/Meeko/scripts/mk_prepare_receptor.py", line 512, in <module>
    chorizo = LinkedRDKitChorizo.from_prody(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 1040, in from_prody
    chorizo = cls(
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 877, in __init__
    padded_mols = self._build_padded_mols(self.residues, bonds, padders)
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/linked_rdkit_chorizo.py", line 1568, in _build_padded_mols
    raise RuntimeError(err_msg)
RuntimeError: expected two paddings for ('A:305', 'A:306') (1, 4), padded 1
expected two paddings for ('A:330', 'A:331') (1, 4), padded 1
expected two paddings for ('A:369', 'A:370') (1, 4), padded 1
expected two paddings for ('A:464', 'A:465') (1, 4), padded 1
expected two paddings for ('A:475', 'A:476') (1, 4), padded 1
```

This PR makes the forgiving a fallback option, only effective when there's no match.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ae23f949c642`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.