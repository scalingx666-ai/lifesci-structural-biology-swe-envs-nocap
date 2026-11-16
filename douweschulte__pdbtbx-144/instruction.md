# Issue

**Title:** Enable customization of lexed/parsed records during PDB processing

## Description

Many applications (e.g. [RustSASA](https://github.com/maxall41/RustSASA)) do not need information from most of the records in PDB files (e.g. SEQADV, SSBOND, DBREF, etc...). This unnecessary lexing and parsing comes with a significant performance penalty and makes downstream applications more prone to failure on non-spec-compliant PDBs (e.g. 1A06 has a bad SEQADV record; in my experience, this kind of thing is pretty common). This PR enables customization of the records parsed by PDBTBX. Additionally, it fixes issues that were introduced when `custom_error` was renamed to `context_error`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b7f6e45dbb44`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.