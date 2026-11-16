# Issue

**Title:** Forgive extra interresidue bonds

## Description

@pietscio is preparing receptors from @nbruciaferri  that have clashes between sidechains, and @sforli suggested to forgive excess bonds. I think this should even be made default as I can't think of a scenario in the desired behavior for a system with clashes isn't to get a warning but still process the structure. All existing tests pass. @rwxayheee can you think of a possible problem with this? We discussed some concepts in #211 but I don't remember ever discussing forgiving excess inter-residue bonds.

There's minor fixes for mk_prepare_receptor.py included herein.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d8e5d308ecf3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.