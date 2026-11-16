# Issue

**Title:** Reduce number of C++ signatures in generated docstrings

## Description

Valid signatures in docstrings are crucial for static analysis tools and doc generators. 

[this PR]:

```
$ python show_gemmi_help.py | grep '::' | wc -l
0
```

[master]:

```
$ python show_gemmi_help.py | grep '::' | wc -l
358
```


<details><summary> [master] <code>python show_gemmi_help.py | grep '::' | head</code></summary>

```
     |      make_assembly(self: gemmi.Assembly, arg0: gemmi::Model, arg1: gemmi.HowToNameCopiedChains) -> gemmi::Model
     |      2. __init__(self: gemmi.AtomAddress, arg0: gemmi::Chain, arg1: gemmi::Residue, arg2: gemmi::Atom) -> None
     |      3. __init__(self: gemmi.AtomAddress, chain: str, seqid: gemmi::SeqId, resname: str, atom: str, altloc: str = '\x00') -> None
     |      1. __getitem__(self: gemmi.AtomGroup, index: int) -> gemmi::Atom
     |      2. __getitem__(self: gemmi.AtomGroup, altloc: str) -> gemmi::Atom
     |      1. __getitem__(self: gemmi.Chain, pdb_seqid: str) -> gemmi::ResidueGroup
     |      2. __getitem__(self: gemmi.Chain, index: int) -> gemmi::Residue
     |      add_residue(self: gemmi.Chain, residue: gemmi::Residue, pos: int = -1) -> gemmi::Residue
     |      append_residues(self: gemmi.Chain, new_residues: List[gemmi::Residue], min_sep: int = 0) -> None
     |      get_ligands(self: gemmi.Chain) -> gemmi::ResidueSpan
```

</details>


<details><summary><code>show_gemmi_help.py</code></summary>

```python

import gemmi
import inspect

_visited = []


def recursive_help(obj):
    if obj in _visited: return
    _visited.append(obj)
    help(obj)
    for name in dir(obj):
        if hasattr(obj, name):
            attr = getattr(obj, name)
            if inspect.isclass(attr) or inspect.ismodule(attr):
                recursive_help(attr)


recursive_help(gemmi)

```

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f1ac06944d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.