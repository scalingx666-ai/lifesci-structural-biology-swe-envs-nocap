# Issue

**Title:** Add chain annotation from COMPND and SOURCE records

## Description

### Overview of New Code/Feature
I have recently been working using this tool, it has been very helpful!

At one point I needed to know, for each of the chains involved in a PDB structure, the source organism it came from. Right now, the `ORGANISM_SCIENTIFIC` subfield under the `SOURCE` field is parsed but kept only as an annotation for the whole PDB file; moreover in case of multiple chains existing in a PDB file, one is arbitrarily picked.

I've made changes that allows one to get general meta-information about a chain through the `Chain` object, such as the name of the molecule, the organism it comes from, etc (basically, information that can be deduced from `COMPND` and `SOURCE` records).

### Example Code
```python3
>>> import atomium
>>> pdb = atomium.fetch("7BWJ.pdb")
>>> pdb.model.chains()
{<Chain E (194 residues)>, <Chain L (213 residues)>, <Chain H (229 residues)>}
>>> pdb.model.chain("E").information
{'mol_id': '1', 'molecule': 'SPIKE PROTEIN S1', 'chain': 'E', 'synonym': 'S GLYCOPROTEIN,E2,PEPLOMER PROTEIN,SARS-COV-2 RECEPTOR BINDING DOMAIN', 'engineered': 'YES', 'organism_scientific': 'SEVERE ACUTE RESPIRATORY SYNDROME CORONAVIRUS 2', 'organism_common': '2019-NCOV', 'organism_taxid': '2697049', 'gene': 'S, 2', 'expression_system': 'SPODOPTERA FRUGIPERDA', 'expression_system_taxid': '7108'}
>>> pdb.model.chain("E").information["organism_scientific"]
'SEVERE ACUTE RESPIRATORY SYNDROME CORONAVIRUS 2'
>>> pdb.model.chain("L").information["organism_scientific"]
'HOMO SAPIENS'
>>> pdb.model.chain("H").information["organism_scientific"]
'HOMO SAPIENS'
>>> pdb.model.chain("H").information
{'mol_id': '3', 'molecule': 'ANTIBODY HEAVY CHAIN', 'chain': 'H', 'engineered': 'YES', 'organism_scientific': 'HOMO SAPIENS', 'organism_taxid': '9606', 'expression_system': 'HOMO SAPIENS', 'expression_system_taxid': '9606', 'expression_system_cell_line': 'HEK 293F'}
>>> pdb.model.chain("H").information["molecule"]
'ANTIBODY HEAVY CHAIN'
>>> pdb.model.chain("E").information["molecule"]
'SPIKE PROTEIN S1'
>>> pdb.model.chain("L").information["molecule"]
'ANTIBODY LIGHT CHAIN'
```

### Checklist

- [x] I have read [CONTRIBUTING.rst](https://github.com/samirelanduk/atomium/blob/master/.github/CONTRIBUTING.rst).
- [x] I have documented any new functions.
- [ ] I have added unit tests for the new code.
- [x] I have added an integration test (if appropriate).
- [x] I have run all tests.
- [ ] I am requesting to merge into the appropriate branch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f8bf59c33e9a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.