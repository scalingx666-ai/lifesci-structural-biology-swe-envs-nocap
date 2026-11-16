# Issue

**Title:** carbohydrate.top: align REMARKS with bondglycans.cns

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Changes comments only; the topology is unchanged. The REMARKS of `carbohydrate.top` had drifted from what `bondglycans.cns` actually does:
- **Residue list:**
  - spelling: mannopyranose (BMA), glucuronic acid (BDP, also in the `RESIdue BDP` line), rhamnopyranose (RAM, also in the `RESIdue RAM` line), and 2-amino-2-deoxy for glucosamine (GCS)
  - stray spaces removed (`beta -D-`)
  - RAM and GXL moved from the link list into the residue list
- **Link list:**
  - the 2.0 Å distance criterion
  - complete donor lists for `B1N` (NAG, NGA, NDG, BGC, GCS) and `B12`/`B13`/`B14`/`B16` (NGA and BDP were missing; `B13`/`B16` said only "beta-D-sugar")
  - the missing `A11` (GLC-GLC, trehalose) link
  - `A26` marked as an older variant that is not applied, since `A26S` is used
  - which Ser/Thr/Cys links are applied automatically (`B1S`, `B1T`) and which are only defined ()
- **`B16`/`B16L` comments:** they said "alpha", but the impropers are β (the same atom order as `B12`/`B12L`). The `B16L` header said "FUC alpha(1,6)" and now says "FUL beta(1,6)".

The same change is in haddocking/haddock25#106, so the two `carbohydrate.top` files stay identical, comments included.

## How was this tested?
- With REMARKS, `!` and `{}` comments stripped, the file is identical to `main`.
- `src/haddock/bin/cns` reads the topology with 0 errors.

## AI assistance
Claude (Claude Code) compared the REMARKS with `bondglycans.cns` and wrote the changes. The comments-only claim was checked by the stripped comparison above, and the CNS read was run.

## Checklist

- [ ] Tests cover the new and/or changed code (comments only)
- [x] Documentation updated if needed (the REMARKS are the documentation)
- [ ] `CHANGELOG.md` updated for user-facing changes (not user-facing)

## Related issues
Related: #1718 (patches that are defined but never applied), #1739.

## Notes for reviewers
None.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4b758dd73c94`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.