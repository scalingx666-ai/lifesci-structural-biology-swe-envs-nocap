# Issue

**Title:** Added PERMISSIVE argument to MMCIFParser as in PDBParser.

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

Added PERMISSIVE argument to MMCIFParser as this is already present (and default True) in PDBParser. To allow problematic MMCIF files that include duplicate atoms in a residue. Kept PERMISSIVE as default False in MMCIFParser to keep behaviour consistent with previous versions unless specified.

Also added _handle_PDB_exception similarly to PDBParser to handle this by wrapping the already imported PDBConstructionException and PDBConstructionWarning.

Previously could not open .cif version of structure 9JXF due to the below error, but can now with PERMISSIVE = True.
"Bio.PDB.PDBExceptions.PDBConstructionException: Atom N defined twice in residue <Residue GLN het=  resseq=21 icode= >"

Did not make this argument as permissive as it is in PDBParser, currently just allowing duplicate atoms, but happy to if there are example .cif structures that need it to be more permissive.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `54a8eda89899`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.