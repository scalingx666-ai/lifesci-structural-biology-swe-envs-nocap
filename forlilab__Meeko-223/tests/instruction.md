# Issue

**Title:** Easy creation of ResidueChemTemplates

## Description

The default dict from the meeko data folder ("residue_chem_templates.json") can be loaded with
```python
templates = ResidueChemTemplates.create_from_defaults()
```

Additional templates can be added with
```python
templates.add_json_file("NAKB_templates")
```
it looks for files in the current working directory, and in the meeko data folder where "residue_chem_templates.json" and "NAKB_templates.json" are currently located. For files in the meeko data folder the ".json" suffix is optional, as per the example above.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `12ec912d4dc2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.