# Issue

**Title:** fix `cgtoaa` not reading backmapping restraints

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Correct `cgtoaa.cns` to make sure the cg-to-aa restraints needed for the CG to AA morphing are correctly read.

---
Edit by @rvhonorato: This PR is actually fixing two bugs, there was a typo:
```diff
-exists_input_cgtbl_filename_$nchain
+exist_input_cgtbl_filename_$nchain
```

and the logic was inverted meaning it was trying to run when it did not exist.

I also added a new `test_cgtoaa.py` that confirms the fix and should also serve as a basis for new tests in this module.

---

## Related Issue

#1592

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `370f665a4824`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.