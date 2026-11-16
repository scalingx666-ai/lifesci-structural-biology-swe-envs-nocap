# Issue

**Title:** Actually check the ClassID inside the COFF header

## Description

The actual signature of an extended COFF is on 3 fields :

Machine type 		-> IMAGE_FILE_MACHINE_UNKNOWN (0)
Number of Sections 	-> FFFF
Class ID		-> {D1BAA1C7-BAEE-4ba9-AF20-FAF66AA4DCB8}

This patch adds the missing check of the Class ID inside the "is_extended" function.

For matter of simplicity, I've filed in the 16 byte array as a static
constant inside the header. The actual value of the classid is only
documented in comments, but there's no pre-filled structure containing it.

Now we can be assured to have a robust way of checking for an extended COFF file.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e7c40204aea7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.