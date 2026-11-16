# Issue

**Title:** Remove the dead backwards A23a and A26a sialylation loops

## Description

## What does this PR do and why?

Removes the `A23a` and `A26a` detection loops from `bondglycans.cns`.

Patches are applied at the end of that file with `reference=-` bound to the `$id1`
residue and `reference=+` bound to the `$id2` residue. `PRESidue A23`, `A26` and
`A26S` all take the sialic acid as their `-` reference: they modify `-C2`, delete
`-O2`/`-HO2`, and add dihedrals through `-C1`, `-O6` and `-O1A`. Of those, `O1A` only
exists on SIA/SIB.

`A23a` and `A26a` select `(resname GAL or resname NGA) and name C2` as `$id1`, so they
pass the acceptor as `-`, which is the wrong way round:

- `A23a` looks for `name O3` on SIA/SIB, and neither residue has an `O3` (their oxygens
  are `O1A O1B O2 O4 O6 O7 O8 O9 O10`), so its inner loop iterates over an empty
  selection and the loop can never fire.
- `A26a` finds SIA `O6`, but that is the ring oxygen, so the 2.0 A test against the
  acceptor's `C2` is not met by a correctly built linkage. If it ever did fire it would
  ask for `-O1A` on a GAL or NGA.

The correctly oriented `A23c` and `A26c` loops take SIA/SIB as `$id1` and are what makes
sialylation work today, so removing the two backwards ones is behaviour-neutral.

I have left the `-O5` improper in `A26S`/`A28S` from the follow-up comment alone: as you
note there, renaming it to `-O6` needs a matching `IMPRoper C OAS OES CCE` target derived
first, so it belongs in its own change.

One thing worth a look while reviewing: with `A26a` gone, `PRESidue A26` is no longer
referenced from `bondglycans.cns` - `A26c` applies `A26S`, which is the same patch plus
the alpha-anomer improper. I left `A26` in `carbohydrate.top` since it is part of the
topology library and can still be applied by hand, but if you would rather it went too I
am happy to add that here.

## How was this tested?

Added `test_sialylation_loops_select_the_sialic_acid_as_first_reference` to
`tests/test_module_topoaa.py`. It parses `bondglycans.cns`, picks out every outer loop
that assigns a sialylation patch (`A23`, `A26`, `A26S`, `A28S`), and asserts that each one
selects `resname SIA or resname SIB` and `name C2` as `$id1`, and that `$id2` selects the
acceptor oxygen the patch bonds to (`O3` for `A23`, `O6` for `A26`/`A26S`, `O8` for
`A28S`). It needs no CNS executable, so it sits with the unit tests.

I ran those assertions against `bondglycans.cns` as it stands on `main` and against the
version in this PR: on `main` they flag `A23a` and `A26a` and pass for `A23c`, `A26c` and
`A28a`; with the two loops removed all three remaining loops pass. The test also pins the
count at three, so it cannot pass by finding nothing.

## AI assistance

An AI assistant helped with the write-up and with drafting the parser in the new test. The
chemistry is not taken from it: the reference direction comes from the `PRESidue A23`,
`A26` and `A26S` bodies and the SIA/SIB/GAL/NGA atom lists in `carbohydrate.top`, which I
read and checked by hand, and the removal itself is the one #1711 asks for.

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

No user-facing behaviour changes, so nothing to document.

## Related issues



## Notes for reviewers

The diff is 72 deletions in `bondglycans.cns` plus the test and a changelog line; the
remaining `A23c`/`A26c` loops are untouched, so this should not collide with the A2G work
in #1710 beyond the changelog.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0dc33b5e620f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.