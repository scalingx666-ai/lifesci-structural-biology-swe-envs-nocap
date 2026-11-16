# Issue

**Title:** Fix unformatted placeholder in double complement error message

## Description

- [X] I hereby agree to dual licence this and any previous contributions under both
the _Biopython License Agreement_ **AND** the _BSD 3-Clause License_.

- [X] I have read the ``CONTRIBUTING.rst`` file, have run ``pre-commit``
locally, and understand that continuous integration checks will be used to
confirm the Biopython unit tests and style checks pass with these changes.

- [X] I have added my name to the alphabetical contributors listings in the files
``NEWS.rst`` and ``CONTRIB.rst`` as part of this pull request, am listed
already, or do not wish to be listed. (*This acknowledgement is optional.*)

`Location.fromstring` raises `LocationParserError` for a doubly complemented location, but the message string was missing its `f` prefix, so users saw the literal placeholder:

```
LocationParserError: double complement in '{text}'?
```

This adds the `f` prefix so the message shows the offending location text, e.g. `double complement in 'join(complement(1..5),10..20)'?`.

I used Claude to help read the code.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `893f1543f879`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.