# Issue

**Title:** Obsolete parsing and File not found fix

## Description

Fix for #4 
The problem is that the obsolete.dat is parsed, but old references are not replaced by newer ones.
I pulled the obsolete last week and still got 'file not found' errors. I could trace it back to the file itself. I added code after parsing, which replaces all cross-references with the latest pdb-ids, replacing all older ones. An example can be shown in the following table:

  | <       |     OLD    |        |   >     | \|  |         <   |     NEW    |        |    >  | 
  |   ---   |     ---    |  ---   |  ---    | --- |     ---     |    ---     |  ---   |  ---  |
  | OBSLTE  |  13-MAY-20 | 6L2V   |  7BYZ   | \|  |     OBSLTE  |  13-MAY-20 | 6L2V   |  7DE5 |
  | OBSLTE  |  22-JUL-20 | 7BYZ   |  7CH2   | \|  |     OBSLTE  |  22-JUL-20 | 7BYZ   |  7DE5 |
  | OBSLTE  |  25-NOV-20 | 7CH2   |  7DE5   | \|  |     OBSLTE  |  25-NOV-20 | 7CH2   |  7DE5 |

If you had 6L2V as input, it currently searches for 7BYZ and throws an error and stops.
In the new version, 6L2V gets replaced with 7DE5 and it works flawlessly.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2ef7893a8c39`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.