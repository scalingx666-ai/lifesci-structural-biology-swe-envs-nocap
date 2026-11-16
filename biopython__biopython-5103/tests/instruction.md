# Issue

**Title:** Fix error message raised when the target is not found in a tree

## Description

<!--- Please read each of the following items and confirm by replacing
 !--the [ ] with a [X] --->

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)



Fix the error message that is raised when the target specified in `tree.trace()` is not found in the tree. The error message now includes the full target. Included a test for this.

### Testing

Given `simple_modified.dnd`
```
(((Aaa,Bbb)AB,(Ccc,Ddd)CD)AD,(Eee,Fff,Ggg)EG)AG;
```
Ran
```
from Bio import Phylo
tree = Phylo.read("..\\biopython-issues\\5098\\simple_modified.dnd", "newick")
tree.trace("AAA", "Ggg")
```
Raises:
```
ValueError: target 'AAA' is not in this tree
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fe756122a304`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.