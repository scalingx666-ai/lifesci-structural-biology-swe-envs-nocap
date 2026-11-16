# Issue

**Title:** Handle empty QUAL title line without raising IndexError

## Description

- [ ] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [ ] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [ ] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

---

### Problem

The QUAL parsers in `Bio/SeqIO/QualityIO.py` extract the record id with `descr.split()[0]`. A record whose title line is empty (a bare `>`) makes `descr.split()` return an empty list, so parsing raises `IndexError` instead of reading the record:

```python
import io
from Bio import SeqIO
list(SeqIO.parse(io.StringIO('>\n10 20 30\n'), 'qual'))
# IndexError: list index out of range
```

`FastaIO` already handles this case (it falls back to an empty id via `try: title.split(None, 1)[0] except IndexError: ''`), so FASTA parses a bare `>` fine while QUAL crashes.

### Fix

Fall back to an empty id when the title line is empty, in both QUAL iterator paths, matching `FastaIO`'s behaviour.

### Test

Added `test_qual_empty_title`: a bare `>` record parses with `id == ''` and its qualities intact. It raises `IndexError` before this change and passes after. The full `test_SeqIO_QualityIO.py` suite passes (53 tests).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c9489604d1d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.