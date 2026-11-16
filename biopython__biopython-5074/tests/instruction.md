# Issue

**Title:** Handle possible non-existent attributes in clusterbuster.py

## Description

- [x] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [x] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [x] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

The commit bc0d58b4c4 added support for writing gap and weight attributes
to ClusterBuster format, but didn't account for motifs from other formats
(like JASPAR) that don't have these attributes. This caused AttributeError
when trying to convert JASPAR motifs to ClusterBuster format.

To trigger this bug, one can load a JASPAR-formatted motif (`motif.jaspar`):

```
>MA0030.2	FOXF2
A  [     3      7      0     27     27     27      0     27     16 ]
C  [    11      0      0      0      0      0     25      0      4 ]
G  [     8     20      0      0      0      0      0      0      2 ]
```

With version 1.85, the following script will result in `AttributeError: 'Motif' object has no attribute 'weight'`:

```
from Bio import motifs

with open('motif.jaspar', 'rt') as f:
  m = [motifs.read(f, 'jaspar')]

motifs.write(m, 'clusterbuster') // Fail
```

This fix adds hasattr() checks before accessing these optional attributes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a31c3ef7481`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.