# Issue

**Title:** Check for selection keywords presence upon validation

## Description

- List of allowed keywords: ('name', 'resn', 'atom', 'resi', 'attr', 'segi', 'chem', 'id', 'byres', 'not')
- Add "complex" syntax in distance_or.tbl file
- New distance_or_malformed.tbl to trigger "Missing/wrong selection keyword Exception"
- Make validate_tbl.py mostly PEP8 compliant

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `09d3c58304f0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.