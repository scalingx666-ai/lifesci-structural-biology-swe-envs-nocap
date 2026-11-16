# Issue

**Title:** Remove identical-value duplicate ANGLe statements from param files

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

Removes **715 redundant `ANGLe` statements** from two CNS force-field parameter
files, in two behaviour-preserving categories.

**(1) 421 identical-value duplicates.** Each is an atom-type triple that — under
the reversal symmetry `A-B-C` ≡ `C-B-A` (middle atom fixed) — was already defined
**with the same parameter values** elsewhere in the same file. CNS matches angle
parameters order-independently and resolves repeats by last-wins, so deleting
these is **behaviour-preserving**.

- `protein-allhdg5-4.param`: 1 exact duplicate (L539 repeated L537).
- `protein-CG-Martini-2-2.param`: 420 reverse-order pairs with identical values.

**(2) 294 near-identical conflicting pairs.** Reverse-order pairs in
`protein-CG-Martini-2-2.param` whose **equilibrium-angle difference is ≤ 2°**.
For these the **first (earlier) instance is removed and the second kept** — since
CNS last-wins already uses the second, this too is **behaviour-preserving**.

The remaining **756 *conflicting*** reverse-order `ANGLe` pairs in the Martini
file (angle differences of 4°–38°) are **intentionally left untouched** — those
require a force-field decision and will be dealt with later.

**In addition, this PR modifies several sampling and refinement CNS scripts to only read the CG parameter files if CG atoms are present.** This avoids loading unnecessarily a large number of parameters. This will also allow having more e.g. ligand parameters read it without having to recompile CNS.

## How was this tested?

- A detection script parses `ANGLe` statements (case-insensitive keyword, incl.
  the `eval (...) ANGLe` form), canonicalises triples under reversal symmetry,
  and groups them. It was **self-tested** against planted reverse-order,
  lowercase-keyword, and `eval`-prefixed duplicates before use.
- **After removal, re-ran the detector:** IDENTICAL duplicate groups = **0** in
  both files; conflicting groups in the Martini file reduced from 1050 to **756**
  (all remaining pairs differ by ≥ 4°), left intact.
- Verified the git diff contains only deletions of `ANGLe` lines (no additions,
  no other statement types touched).

No automated unit test is added — the change touches force-field data files, not
Python code, and is behaviour-preserving.

All tests passing.

## AI assistance

AI (Claude) played a meaningful role: it wrote the duplicate-detection script,
identified the identical-value duplicates, performed the removals, and drafted
this description. Because this touches CNS/topology parameters, the results were
verified as described above (detector re-scan confirming conflicts untouched;
diff confirming deletions only). Per `AI-POLICY.md`, a maintainer should review
and own the scientific judgement before merging.

## Checklist

- [ ] Tests cover the new and/or changed code <!-- N/A: data-only, behaviour-preserving change; verified via detector re-scan -->
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) <!-- N/A: no user-facing behaviour change -->
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

- Issue #1589

## Notes for reviewers

- Two classes of redundancy were removed: **identical-value** duplicates (421)
  and **near-identical conflicting** reverse-order pairs within **2°** (294 —
  first instance dropped, second kept). The remaining **756 conflicting** Martini
  `ANGLe` pairs (≥ 4° apart) are a separate, deliberate follow-up (likely an
  upstream CG-generator fix) and are **not** addressed here.
- Supporting analysis (full scan, method, examples) attached below.

<details>
<summary><strong>Supporting information — ANGL-DUPLICATES.md</strong></summary>

# ANGLe deduplication — CNS toppar `.param` scan

Per-file scan of `src/haddock/cns/toppar/*.param` for **duplicate ANGLe
statements**: the *same* atom-type triple (under the reversal symmetry
`ANGLe A-B-C` ≡ `ANGLe C-B-A`, middle atom fixed) defined on more than one line.

Companion to [BOND-DUPLICATES.md](BOND-DUPLICATES.md) and the conflict report in
[FIXME-param.md](FIXME-param.md).

## Method

For each line: strip `{...}` blocks and trailing `!` comments, locate the
`ANGL*` keyword token (**case-insensitive** — `ANGLe`, `ANGLE`, `angle`, `ANGL`
all match; also inside the `eval (...) ANGLe ...` form), take the three following
tokens as the atom-type triple and the rest as parameters. Canonicalize the
triple by reversal so `A-B-C` and `C-B-A` collapse to one key, group by key, and
report every key seen more than once. Detector self-tested against planted
reverse-order, lowercase-keyword, and `eval`-prefixed duplicates.

Each group is tagged **IDENTICAL** (all occurrences share the same parameter
values — safe to dedup, no behaviour change) or **CONFLICT** (occurrences
disagree in force constant and/or equilibrium angle — last-wins in CNS; needs a
force-field decision, do not blindly delete).

## Summary

| File | ANGLe statements | Duplicated triples | IDENTICAL | CONFLICT |
|------|-----------------:|-------------------:|----------:|---------:|
| carbohydrate.param | 100 | 0 | 0 | 0 |
| cofactors.param | 743 | 0 | 0 | 0 |
| dna-rna-CG-MARTINI-2-1p.param | 146 | 0 | 0 | 0 |
| dna-rna-allatom-hj-opls-1.3.param | 310 | 0 | 0 | 0 |
| fragment_probes.param | 116 | 0 | 0 | 0 |
| hemes-allhdg.param | 76 | 0 | 0 | 0 |
| ion.param | 3 | 0 | 0 | 0 |
| **protein-CG-Martini-2-2.param** | 7702 | **1470** | 420 | **1050** |
| **protein-allhdg5-4.param** | 489 | **1** | 1 | 0 |
| shape.param | 0 | 0 | 0 | 0 |
| solvent-allhdg5-4.param | 3 | 0 | 0 | 0 |
| **Total** | **9788** | **1471** | **421** | **1050** |

9 of 11 files are clean. Two need attention.

---

## 1. `protein-allhdg5-4.param` — 1 identical duplicate (safe)

| Triple | Lines | Δ | Status |
|--------|-------|---|--------|
| `CR1E CR1E CY2` | 537, 539 | none | IDENTICAL |

```
 537: ANGLe  CR1E CR1E CY2      500.00 {sd=     0.031}    119.6224
 539: ANGLe  CR1E CR1E CY2      500.00 {sd=     0.031}    119.6224   <-- exact duplicate of L537
```

Line 538 in between (`CR1E CR1W CY2`) is a *different* triple, so this is an
isolated copy-paste artifact. Both entries are byte-for-byte identical, so
removing line 539 changes nothing physically — **a clean, safe dedup**.

---

## 2. `protein-CG-Martini-2-2.param` — 1470 duplicated triples

All 1470 are **reverse-order** pairs (`A-B-C` vs `C-B-A`); none are same-order.
Breakdown:

- **420 IDENTICAL** — reverse pairs carrying the same values; safe to collapse to
  one entry with no behaviour change. Example:

  ```
  1767: ANGLe Bda B0 B0   5.971  134
  1962: ANGLe B0  B0 Bda  5.971  134   <-- reverse of L1767, same values
  ```

- **1050 CONFLICT** — reverse pairs with *different* values (this is exactly the
  set flagged in FIXME-param.md §2). Because an angle potential is geometrically
  symmetric and CNS matches angle parameters order-independently, both entries
  match the same physical bead triplet and last-wins silently resolves them.
  Example:

  ```
   787: ANGLe H0 B0 B0   167.184   96
  1957: ANGLe B0 B0 H0     5.971  134   <-- reverse, different force const AND angle
  ```

This is an **auto-generated coarse-grained** force field. As FIXME-param.md notes,
the likely cause is the generation pipeline emitting per-instance directional
angles that CNS then collapses — so the fix for the 1050 conflicts may belong
**upstream in the generator**, not in the `.param` file. Verify before editing.

---

## Recommendation

1. **`protein-allhdg5-4.param` L539** — remove the exact duplicate; trivially safe.
2. **`protein-CG-Martini-2-2.param`** — the 420 IDENTICAL reverse pairs can be
   collapsed mechanically. Of the 1050 CONFLICT pairs, the **294 within 2°** can
   also be collapsed (first instance dropped, second kept — see the
   *ANGL-conflicts-removed.md* table below); the remaining **756** (≥ 4° apart)
   are a force-field decision and should be checked against how the file is
   generated first.

**Update:** this PR acts on that recommendation — the 421 identical duplicates
and the 294 within-2° conflicts have now been removed; the 756 larger conflicts
are left untouched. The scan figures above describe the original (pre-removal)
state.

</details>

<details>
<summary><strong>Full list of the 421 removed exact duplicates (side-by-side table) — ANGL-duplicates-removed.md</strong></summary>

# Exact-duplicate `ANGLe` statements removed

The 421 identical-value duplicate `ANGLe` groups removed in . Each row is one canonical triple (under reversal symmetry `A-B-C` ≡ `C-B-A`); **Kept** is the first occurrence retained, **Removed** the redundant duplicate. Both carry identical parameter values, so removal is behaviour-preserving.

## `protein-allhdg5-4.param` — 1 exact duplicates

| Triple | Kept | Removed |
|--------|------|---------|
| `CR1E-CR1E-CY2` | L537: `ANGLe CR1E CR1E CY2 500.00 {sd= 0.031} 119.6224` | L539: `ANGLe CR1E CR1E CY2 500.00 {sd= 0.031} 119.6224` |

## `protein-CG-Martini-2-2.param` — 420 exact duplicates

| Triple | Kept | Removed |
|--------|------|---------|
| `F4-F4-F5` | L276: `ANGLe F4 F4 F5 5.971 127` | L471: `ANGLe F5 F4 F4 5.971 127` |
| `F4-F5-F5` | L290: `ANGLe F4 F5 F5 5.971 127` | L485: `ANGLe F5 F5 F4 5.971 127` |
| `F4-H0-F5` | L304: `ANGLe F4 H0 F5 5.971 127` | L499: `ANGLe F5 H0 F4 5.971 127` |
| `F4-H5-F5` | L318: `ANGLe F4 H5 F5 5.971 127` | L513: `ANGLe F5 H5 F4 5.971 127` |
| `F4-HD-F5` | L332: `ANGLe F4 Hd F5 5.971 127` | L527: `ANGLe F5 Hd F4 5.971 127` |
| `F4-HA-F5` | L346: `ANGLe F4 Ha F5 5.971 127` | L541: `ANGLe F5 Ha F4 5.971 127` |
| `F4-HDA-F5` | L360: `ANGLe F4 Hda F5 5.971 127` | L555: `ANGLe F5 Hda F4 5.971 127` |
| `F4-BDA-F5` | L374: `ANGLe F4 Bda F5 5.971 127` | L569: `ANGLe F5 Bda F4 5.971 127` |
| `F4-B0-F5` | L388: `ANGLe F4 B0 F5 5.971 127` | L583: `ANGLe F5 B0 F4 5.971 127` |
| `F4-TDA-F5` | L402: `ANGLe F4 Tda F5 5.971 127` | L597: `ANGLe F5 Tda F4 5.971 127` |
| `F4-T0-F5` | L416: `ANGLe F4 T0 F5 5.971 127` | L611: `ANGLe F5 T0 F4 5.971 127` |
| `F4-HP5-F5` | L430: `ANGLe F4 HP5 F5 5.971 127` | L625: `ANGLe F5 HP5 F4 5.971 127` |
| `F4-HP0-F5` | L444: `ANGLe F4 HP0 F5 5.971 127` | L639: `ANGLe F5 HP0 F4 5.971 127` |
| `F4-HPA-F5` | L458: `ANGLe F4 HPa F5 5.971 127` | L653: `ANGLe F5 HPa F4 5.971 127` |
| `H0-F4-H5` | L670: `ANGLe H0 F4 H5 167.184 96` | L865: `ANGLe H5 F4 H0 167.184 96` |
| `H0-F4-HD` | L671: `ANGLe H0 F4 Hd 167.184 96` | L1061: `ANGLe Hd F4 H0 167.184 96` |
| `H0-F4-HA` | L672: `ANGLe H0 F4 Ha 167.184 96` | L1257: `ANGLe Ha F4 H0 167.184 96` |
| `H0-F4-HDA` | L673: `ANGLe H0 F4 Hda 167.184 96` | L1453: `ANGLe Hda F4 H0 167.184 96` |
| `H0-F5-H5` | L684: `ANGLe H0 F5 H5 167.184 96` | L879: `ANGLe H5 F5 H0 167.184 96` |
| `H0-F5-HD` | L685: `ANGLe H0 F5 Hd 167.184 96` | L1075: `ANGLe Hd F5 H0 167.184 96` |
| `H0-F5-HA` | L686: `ANGLe H0 F5 Ha 167.184 96` | L1271: `ANGLe Ha F5 H0 167.184 96` |
| `H0-F5-HDA` | L687: `ANGLe H0 F5 Hda 167.184 96` | L1467: `ANGLe Hda F5 H0 167.184 96` |
| `H0-H0-H5` | L698: `ANGLe H0 H0 H5 167.184 96` | L893: `ANGLe H5 H0 H0 167.184 96` |
| `H0-H0-HD` | L699: `ANGLe H0 H0 Hd 167.184 96` | L1089: `ANGLe Hd H0 H0 167.184 96` |
| `H0-H0-HA` | L700: `ANGLe H0 H0 Ha 167.184 96` | L1285: `ANGLe Ha H0 H0 167.184 96` |
| `H0-H0-HDA` | L701: `ANGLe H0 H0 Hda 167.184 96` | L1481: `ANGLe Hda H0 H0 167.184 96` |
| `H0-H5-H5` | L712: `ANGLe H0 H5 H5 167.184 96` | L907: `ANGLe H5 H5 H0 167.184 96` |
| `H0-H5-HD` | L713: `ANGLe H0 H5 Hd 167.184 96` | L1103: `ANGLe Hd H5 H0 167.184 96` |
| `H0-H5-HA` | L714: `ANGLe H0 H5 Ha 167.184 96` | L1299: `ANGLe Ha H5 H0 167.184 96` |
| `H0-H5-HDA` | L715: `ANGLe H0 H5 Hda 167.184 96` | L1495: `ANGLe Hda H5 H0 167.184 96` |
| `H0-HD-H5` | L726: `ANGLe H0 Hd H5 167.184 96` | L921: `ANGLe H5 Hd H0 167.184 96` |
| `H0-HD-HD` | L727: `ANGLe H0 Hd Hd 167.184 96` | L1117: `ANGLe Hd Hd H0 167.184 96` |
| `H0-HD-HA` | L728: `ANGLe H0 Hd Ha 167.184 96` | L1313: `ANGLe Ha Hd H0 167.184 96` |
| `H0-HD-HDA` | L729: `ANGLe H0 Hd Hda 167.184 96` | L1509: `ANGLe Hda Hd H0 167.184 96` |
| `H0-HA-H5` | L740: `ANGLe H0 Ha H5 167.184 96` | L935: `ANGLe H5 Ha H0 167.184 96` |
| `H0-HA-HD` | L741: `ANGLe H0 Ha Hd 167.184 96` | L1131: `ANGLe Hd Ha H0 167.184 96` |
| `H0-HA-HA` | L742: `ANGLe H0 Ha Ha 167.184 96` | L1327: `ANGLe Ha Ha H0 167.184 96` |
| `H0-HA-HDA` | L743: `ANGLe H0 Ha Hda 167.184 96` | L1523: `ANGLe Hda Ha H0 167.184 96` |
| `H0-HDA-H5` | L754: `ANGLe H0 Hda H5 167.184 96` | L949: `ANGLe H5 Hda H0 167.184 96` |
| `H0-HDA-HD` | L755: `ANGLe H0 Hda Hd 167.184 96` | L1145: `ANGLe Hd Hda H0 167.184 96` |
| `H0-HDA-HA` | L756: `ANGLe H0 Hda Ha 167.184 96` | L1341: `ANGLe Ha Hda H0 167.184 96` |
| `H0-HDA-HDA` | L757: `ANGLe H0 Hda Hda 167.184 96` | L1537: `ANGLe Hda Hda H0 167.184 96` |
| `H0-BDA-H5` | L768: `ANGLe H0 Bda H5 167.184 96` | L963: `ANGLe H5 Bda H0 167.184 96` |
| `H0-BDA-HD` | L769: `ANGLe H0 Bda Hd 167.184 96` | L1159: `ANGLe Hd Bda H0 167.184 96` |
| `H0-BDA-HA` | L770: `ANGLe H0 Bda Ha 167.184 96` | L1355: `ANGLe Ha Bda H0 167.184 96` |
| `H0-BDA-HDA` | L771: `ANGLe H0 Bda Hda 167.184 96` | L1551: `ANGLe Hda Bda H0 167.184 96` |
| `H0-B0-H5` | L782: `ANGLe H0 B0 H5 167.184 96` | L977: `ANGLe H5 B0 H0 167.184 96` |
| `H0-B0-HD` | L783: `ANGLe H0 B0 Hd 167.184 96` | L1173: `ANGLe Hd B0 H0 167.184 96` |
| `H0-B0-HA` | L784: `ANGLe H0 B0 Ha 167.184 96` | L1369: `ANGLe Ha B0 H0 167.184 96` |
| `H0-B0-HDA` | L785: `ANGLe H0 B0 Hda 167.184 96` | L1565: `ANGLe Hda B0 H0 167.184 96` |
| `H0-TDA-H5` | L796: `ANGLe H0 Tda H5 167.184 96` | L991: `ANGLe H5 Tda H0 167.184 96` |
| `H0-TDA-HD` | L797: `ANGLe H0 Tda Hd 167.184 96` | L1187: `ANGLe Hd Tda H0 167.184 96` |
| `H0-TDA-HA` | L798: `ANGLe H0 Tda Ha 167.184 96` | L1383: `ANGLe Ha Tda H0 167.184 96` |
| `H0-TDA-HDA` | L799: `ANGLe H0 Tda Hda 167.184 96` | L1579: `ANGLe Hda Tda H0 167.184 96` |
| `H0-T0-H5` | L810: `ANGLe H0 T0 H5 167.184 96` | L1005: `ANGLe H5 T0 H0 167.184 96` |
| `H0-T0-HD` | L811: `ANGLe H0 T0 Hd 167.184 96` | L1201: `ANGLe Hd T0 H0 167.184 96` |
| `H0-T0-HA` | L812: `ANGLe H0 T0 Ha 167.184 96` | L1397: `ANGLe Ha T0 H0 167.184 96` |
| `H0-T0-HDA` | L813: `ANGLe H0 T0 Hda 167.184 96` | L1593: `ANGLe Hda T0 H0 167.184 96` |
| `H0-HP5-H5` | L824: `ANGLe H0 HP5 H5 167.184 96` | L1019: `ANGLe H5 HP5 H0 167.184 96` |
| `H0-HP5-HD` | L825: `ANGLe H0 HP5 Hd 167.184 96` | L1215: `ANGLe Hd HP5 H0 167.184 96` |
| `H0-HP5-HA` | L826: `ANGLe H0 HP5 Ha 167.184 96` | L1411: `ANGLe Ha HP5 H0 167.184 96` |
| `H0-HP5-HDA` | L827: `ANGLe H0 HP5 Hda 167.184 96` | L1607: `ANGLe Hda HP5 H0 167.184 96` |
| `H0-HP0-H5` | L838: `ANGLe H0 HP0 H5 167.184 96` | L1033: `ANGLe H5 HP0 H0 167.184 96` |
| `H0-HP0-HD` | L839: `ANGLe H0 HP0 Hd 167.184 96` | L1229: `ANGLe Hd HP0 H0 167.184 96` |
| `H0-HP0-HA` | L840: `ANGLe H0 HP0 Ha 167.184 96` | L1425: `ANGLe Ha HP0 H0 167.184 96` |
| `H0-HP0-HDA` | L841: `ANGLe H0 HP0 Hda 167.184 96` | L1621: `ANGLe Hda HP0 H0 167.184 96` |
| `H0-HPA-H5` | L852: `ANGLe H0 HPa H5 167.184 96` | L1047: `ANGLe H5 HPa H0 167.184 96` |
| `H0-HPA-HD` | L853: `ANGLe H0 HPa Hd 167.184 96` | L1243: `ANGLe Hd HPa H0 167.184 96` |
| `H0-HPA-HA` | L854: `ANGLe H0 HPa Ha 167.184 96` | L1439: `ANGLe Ha HPa H0 167.184 96` |
| `H0-HPA-HDA` | L855: `ANGLe H0 HPa Hda 167.184 96` | L1635: `ANGLe Hda HPa H0 167.184 96` |
| `H5-F4-HD` | L867: `ANGLe H5 F4 Hd 167.184 96` | L1062: `ANGLe Hd F4 H5 167.184 96` |
| `H5-F4-HA` | L868: `ANGLe H5 F4 Ha 167.184 96` | L1258: `ANGLe Ha F4 H5 167.184 96` |
| `H5-F4-HDA` | L869: `ANGLe H5 F4 Hda 167.184 96` | L1454: `ANGLe Hda F4 H5 167.184 96` |
| `H5-F5-HD` | L881: `ANGLe H5 F5 Hd 167.184 96` | L1076: `ANGLe Hd F5 H5 167.184 96` |
| `H5-F5-HA` | L882: `ANGLe H5 F5 Ha 167.184 96` | L1272: `ANGLe Ha F5 H5 167.184 96` |
| `H5-F5-HDA` | L883: `ANGLe H5 F5 Hda 167.184 96` | L1468: `ANGLe Hda F5 H5 167.184 96` |
| `H5-H0-HD` | L895: `ANGLe H5 H0 Hd 167.184 96` | L1090: `ANGLe Hd H0 H5 167.184 96` |
| `H5-H0-HA` | L896: `ANGLe H5 H0 Ha 167.184 96` | L1286: `ANGLe Ha H0 H5 167.184 96` |
| `H5-H0-HDA` | L897: `ANGLe H5 H0 Hda 167.184 96` | L1482: `ANGLe Hda H0 H5 167.184 96` |
| `H5-H5-HD` | L909: `ANGLe H5 H5 Hd 167.184 96` | L1104: `ANGLe Hd H5 H5 167.184 96` |
| `H5-H5-HA` | L910: `ANGLe H5 H5 Ha 167.184 96` | L1300: `ANGLe Ha H5 H5 167.184 96` |
| `H5-H5-HDA` | L911: `ANGLe H5 H5 Hda 167.184 96` | L1496: `ANGLe Hda H5 H5 167.184 96` |
| `H5-HD-HD` | L923: `ANGLe H5 Hd Hd 167.184 96` | L1118: `ANGLe Hd Hd H5 167.184 96` |
| `H5-HD-HA` | L924: `ANGLe H5 Hd Ha 167.184 96` | L1314: `ANGLe Ha Hd H5 167.184 96` |
| `H5-HD-HDA` | L925: `ANGLe H5 Hd Hda 167.184 96` | L1510: `ANGLe Hda Hd H5 167.184 96` |
| `H5-HA-HD` | L937: `ANGLe H5 Ha Hd 167.184 96` | L1132: `ANGLe Hd Ha H5 167.184 96` |
| `H5-HA-HA` | L938: `ANGLe H5 Ha Ha 167.184 96` | L1328: `ANGLe Ha Ha H5 167.184 96` |
| `H5-HA-HDA` | L939: `ANGLe H5 Ha Hda 167.184 96` | L1524: `ANGLe Hda Ha H5 167.184 96` |
| `H5-HDA-HD` | L951: `ANGLe H5 Hda Hd 167.184 96` | L1146: `ANGLe Hd Hda H5 167.184 96` |
| `H5-HDA-HA` | L952: `ANGLe H5 Hda Ha 167.184 96` | L1342: `ANGLe Ha Hda H5 167.184 96` |
| `H5-HDA-HDA` | L953: `ANGLe H5 Hda Hda 167.184 96` | L1538: `ANGLe Hda Hda H5 167.184 96` |
| `H5-BDA-HD` | L965: `ANGLe H5 Bda Hd 167.184 96` | L1160: `ANGLe Hd Bda H5 167.184 96` |
| `H5-BDA-HA` | L966: `ANGLe H5 Bda Ha 167.184 96` | L1356: `ANGLe Ha Bda H5 167.184 96` |
| `H5-BDA-HDA` | L967: `ANGLe H5 Bda Hda 167.184 96` | L1552: `ANGLe Hda Bda H5 167.184 96` |
| `H5-B0-HD` | L979: `ANGLe H5 B0 Hd 167.184 96` | L1174: `ANGLe Hd B0 H5 167.184 96` |
| `H5-B0-HA` | L980: `ANGLe H5 B0 Ha 167.184 96` | L1370: `ANGLe Ha B0 H5 167.184 96` |
| `H5-B0-HDA` | L981: `ANGLe H5 B0 Hda 167.184 96` | L1566: `ANGLe Hda B0 H5 167.184 96` |
| `H5-TDA-HD` | L993: `ANGLe H5 Tda Hd 167.184 96` | L1188: `ANGLe Hd Tda H5 167.184 96` |
| `H5-TDA-HA` | L994: `ANGLe H5 Tda Ha 167.184 96` | L1384: `ANGLe Ha Tda H5 167.184 96` |
| `H5-TDA-HDA` | L995: `ANGLe H5 Tda Hda 167.184 96` | L1580: `ANGLe Hda Tda H5 167.184 96` |
| `H5-T0-HD` | L1007: `ANGLe H5 T0 Hd 167.184 96` | L1202: `ANGLe Hd T0 H5 167.184 96` |
| `H5-T0-HA` | L1008: `ANGLe H5 T0 Ha 167.184 96` | L1398: `ANGLe Ha T0 H5 167.184 96` |
| `H5-T0-HDA` | L1009: `ANGLe H5 T0 Hda 167.184 96` | L1594: `ANGLe Hda T0 H5 167.184 96` |
| `H5-HP5-HD` | L1021: `ANGLe H5 HP5 Hd 167.184 96` | L1216: `ANGLe Hd HP5 H5 167.184 96` |
| `H5-HP5-HA` | L1022: `ANGLe H5 HP5 Ha 167.184 96` | L1412: `ANGLe Ha HP5 H5 167.184 96` |
| `H5-HP5-HDA` | L1023: `ANGLe H5 HP5 Hda 167.184 96` | L1608: `ANGLe Hda HP5 H5 167.184 96` |
| `H5-HP0-HD` | L1035: `ANGLe H5 HP0 Hd 167.184 96` | L1230: `ANGLe Hd HP0 H5 167.184 96` |
| `H5-HP0-HA` | L1036: `ANGLe H5 HP0 Ha 167.184 96` | L1426: `ANGLe Ha HP0 H5 167.184 96` |
| `H5-HP0-HDA` | L1037: `ANGLe H5 HP0 Hda 167.184 96` | L1622: `ANGLe Hda HP0 H5 167.184 96` |
| `H5-HPA-HD` | L1049: `ANGLe H5 HPa Hd 167.184 96` | L1244: `ANGLe Hd HPa H5 167.184 96` |
| `H5-HPA-HA` | L1050: `ANGLe H5 HPa Ha 167.184 96` | L1440: `ANGLe Ha HPa H5 167.184 96` |
| `H5-HPA-HDA` | L1051: `ANGLe H5 HPa Hda 167.184 96` | L1636: `ANGLe Hda HPa H5 167.184 96` |
| `HA-F4-HD` | L1064: `ANGLe Hd F4 Ha 167.184 96` | L1259: `ANGLe Ha F4 Hd 167.184 96` |
| `HD-F4-HDA` | L1065: `ANGLe Hd F4 Hda 167.184 96` | L1455: `ANGLe Hda F4 Hd 167.184 96` |
| `HA-F5-HD` | L1078: `ANGLe Hd F5 Ha 167.184 96` | L1273: `ANGLe Ha F5 Hd 167.184 96` |
| `HD-F5-HDA` | L1079: `ANGLe Hd F5 Hda 167.184 96` | L1469: `ANGLe Hda F5 Hd 167.184 96` |
| `HA-H0-HD` | L1092: `ANGLe Hd H0 Ha 167.184 96` | L1287: `ANGLe Ha H0 Hd 167.184 96` |
| `HD-H0-HDA` | L1093: `ANGLe Hd H0 Hda 167.184 96` | L1483: `ANGLe Hda H0 Hd 167.184 96` |
| `HA-H5-HD` | L1106: `ANGLe Hd H5 Ha 167.184 96` | L1301: `ANGLe Ha H5 Hd 167.184 96` |
| `HD-H5-HDA` | L1107: `ANGLe Hd H5 Hda 167.184 96` | L1497: `ANGLe Hda H5 Hd 167.184 96` |
| `HA-HD-HD` | L1120: `ANGLe Hd Hd Ha 167.184 96` | L1315: `ANGLe Ha Hd Hd 167.184 96` |
| `HD-HD-HDA` | L1121: `ANGLe Hd Hd Hda 167.184 96` | L1511: `ANGLe Hda Hd Hd 167.184 96` |
| `HA-HA-HD` | L1134: `ANGLe Hd Ha Ha 167.184 96` | L1329: `ANGLe Ha Ha Hd 167.184 96` |
| `HD-HA-HDA` | L1135: `ANGLe Hd Ha Hda 167.184 96` | L1525: `ANGLe Hda Ha Hd 167.184 96` |
| `HA-HDA-HD` | L1148: `ANGLe Hd Hda Ha 167.184 96` | L1343: `ANGLe Ha Hda Hd 167.184 96` |
| `HD-HDA-HDA` | L1149: `ANGLe Hd Hda Hda 167.184 96` | L1539: `ANGLe Hda Hda Hd 167.184 96` |
| `HA-BDA-HD` | L1162: `ANGLe Hd Bda Ha 167.184 96` | L1357: `ANGLe Ha Bda Hd 167.184 96` |
| `HD-BDA-HDA` | L1163: `ANGLe Hd Bda Hda 167.184 96` | L1553: `ANGLe Hda Bda Hd 167.184 96` |
| `HA-B0-HD` | L1176: `ANGLe Hd B0 Ha 167.184 96` | L1371: `ANGLe Ha B0 Hd 167.184 96` |
| `HD-B0-HDA` | L1177: `ANGLe Hd B0 Hda 167.184 96` | L1567: `ANGLe Hda B0 Hd 167.184 96` |
| `HA-TDA-HD` | L1190: `ANGLe Hd Tda Ha 167.184 96` | L1385: `ANGLe Ha Tda Hd 167.184 96` |
| `HD-TDA-HDA` | L1191: `ANGLe Hd Tda Hda 167.184 96` | L1581: `ANGLe Hda Tda Hd 167.184 96` |
| `HA-T0-HD` | L1204: `ANGLe Hd T0 Ha 167.184 96` | L1399: `ANGLe Ha T0 Hd 167.184 96` |
| `HD-T0-HDA` | L1205: `ANGLe Hd T0 Hda 167.184 96` | L1595: `ANGLe Hda T0 Hd 167.184 96` |
| `HA-HP5-HD` | L1218: `ANGLe Hd HP5 Ha 167.184 96` | L1413: `ANGLe Ha HP5 Hd 167.184 96` |
| `HD-HP5-HDA` | L1219: `ANGLe Hd HP5 Hda 167.184 96` | L1609: `ANGLe Hda HP5 Hd 167.184 96` |
| `HA-HP0-HD` | L1232: `ANGLe Hd HP0 Ha 167.184 96` | L1427: `ANGLe Ha HP0 Hd 167.184 96` |
| `HD-HP0-HDA` | L1233: `ANGLe Hd HP0 Hda 167.184 96` | L1623: `ANGLe Hda HP0 Hd 167.184 96` |
| `HA-HPA-HD` | L1246: `ANGLe Hd HPa Ha 167.184 96` | L1441: `ANGLe Ha HPa Hd 167.184 96` |
| `HD-HPA-HDA` | L1247: `ANGLe Hd HPa Hda 167.184 96` | L1637: `ANGLe Hda HPa Hd 167.184 96` |
| `HA-F4-HDA` | L1261: `ANGLe Ha F4 Hda 167.184 96` | L1456: `ANGLe Hda F4 Ha 167.184 96` |
| `HA-F5-HDA` | L1275: `ANGLe Ha F5 Hda 167.184 96` | L1470: `ANGLe Hda F5 Ha 167.184 96` |
| `HA-H0-HDA` | L1289: `ANGLe Ha H0 Hda 167.184 96` | L1484: `ANGLe Hda H0 Ha 167.184 96` |
| `HA-H5-HDA` | L1303: `ANGLe Ha H5 Hda 167.184 96` | L1498: `ANGLe Hda H5 Ha 167.184 96` |
| `HA-HD-HDA` | L1317: `ANGLe Ha Hd Hda 167.184 96` | L1512: `ANGLe Hda Hd Ha 167.184 96` |
| `HA-HA-HDA` | L1331: `ANGLe Ha Ha Hda 167.184 96` | L1526: `ANGLe Hda Ha Ha 167.184 96` |
| `HA-HDA-HDA` | L1345: `ANGLe Ha Hda Hda 167.184 96` | L1540: `ANGLe Hda Hda Ha 167.184 96` |
| `HA-BDA-HDA` | L1359: `ANGLe Ha Bda Hda 167.184 96` | L1554: `ANGLe Hda Bda Ha 167.184 96` |
| `HA-B0-HDA` | L1373: `ANGLe Ha B0 Hda 167.184 96` | L1568: `ANGLe Hda B0 Ha 167.184 96` |
| `HA-TDA-HDA` | L1387: `ANGLe Ha Tda Hda 167.184 96` | L1582: `ANGLe Hda Tda Ha 167.184 96` |
| `HA-T0-HDA` | L1401: `ANGLe Ha T0 Hda 167.184 96` | L1596: `ANGLe Hda T0 Ha 167.184 96` |
| `HA-HP5-HDA` | L1415: `ANGLe Ha HP5 Hda 167.184 96` | L1610: `ANGLe Hda HP5 Ha 167.184 96` |
| `HA-HP0-HDA` | L1429: `ANGLe Ha HP0 Hda 167.184 96` | L1624: `ANGLe Hda HP0 Ha 167.184 96` |
| `HA-HPA-HDA` | L1443: `ANGLe Ha HPa Hda 167.184 96` | L1638: `ANGLe Hda HPa Ha 167.184 96` |
| `B0-F4-BDA` | L1655: `ANGLe Bda F4 B0 5.971 134` | L1850: `ANGLe B0 F4 Bda 5.971 134` |
| `B0-F5-BDA` | L1669: `ANGLe Bda F5 B0 5.971 134` | L1864: `ANGLe B0 F5 Bda 5.971 134` |
| `B0-H0-BDA` | L1683: `ANGLe Bda H0 B0 5.971 134` | L1878: `ANGLe B0 H0 Bda 5.971 134` |
| `B0-H5-BDA` | L1697: `ANGLe Bda H5 B0 5.971 134` | L1892: `ANGLe B0 H5 Bda 5.971 134` |
| `B0-HD-BDA` | L1711: `ANGLe Bda Hd B0 5.971 134` | L1906: `ANGLe B0 Hd Bda 5.971 134` |
| `B0-HA-BDA` | L1725: `ANGLe Bda Ha B0 5.971 134` | L1920: `ANGLe B0 Ha Bda 5.971 134` |
| `B0-HDA-BDA` | L1739: `ANGLe Bda Hda B0 5.971 134` | L1934: `ANGLe B0 Hda Bda 5.971 134` |
| `B0-BDA-BDA` | L1753: `ANGLe Bda Bda B0 5.971 134` | L1948: `ANGLe B0 Bda Bda 5.971 134` |
| `B0-B0-BDA` | L1767: `ANGLe Bda B0 B0 5.971 134` | L1962: `ANGLe B0 B0 Bda 5.971 134` |
| `B0-TDA-BDA` | L1781: `ANGLe Bda Tda B0 5.971 134` | L1976: `ANGLe B0 Tda Bda 5.971 134` |
| `B0-T0-BDA` | L1795: `ANGLe Bda T0 B0 5.971 134` | L1990: `ANGLe B0 T0 Bda 5.971 134` |
| `B0-HP5-BDA` | L1809: `ANGLe Bda HP5 B0 5.971 134` | L2004: `ANGLe B0 HP5 Bda 5.971 134` |
| `B0-HP0-BDA` | L1823: `ANGLe Bda HP0 B0 5.971 134` | L2018: `ANGLe B0 HP0 Bda 5.971 134` |
| `B0-HPA-BDA` | L1837: `ANGLe Bda HPa B0 5.971 134` | L2032: `ANGLe B0 HPa Bda 5.971 134` |
| `T0-F4-TDA` | L2049: `ANGLe Tda F4 T0 5.971 100` | L2244: `ANGLe T0 F4 Tda 5.971 100` |
| `T0-F5-TDA` | L2063: `ANGLe Tda F5 T0 5.971 100` | L2258: `ANGLe T0 F5 Tda 5.971 100` |
| `T0-H0-TDA` | L2077: `ANGLe Tda H0 T0 5.971 100` | L2272: `ANGLe T0 H0 Tda 5.971 100` |
| `T0-H5-TDA` | L2091: `ANGLe Tda H5 T0 5.971 100` | L2286: `ANGLe T0 H5 Tda 5.971 100` |
| `T0-HD-TDA` | L2105: `ANGLe Tda Hd T0 5.971 100` | L2300: `ANGLe T0 Hd Tda 5.971 100` |
| `T0-HA-TDA` | L2119: `ANGLe Tda Ha T0 5.971 100` | L2314: `ANGLe T0 Ha Tda 5.971 100` |
| `T0-HDA-TDA` | L2133: `ANGLe Tda Hda T0 5.971 100` | L2328: `ANGLe T0 Hda Tda 5.971 100` |
| `T0-BDA-TDA` | L2147: `ANGLe Tda Bda T0 5.971 100` | L2342: `ANGLe T0 Bda Tda 5.971 100` |
| `T0-B0-TDA` | L2161: `ANGLe Tda B0 T0 5.971 100` | L2356: `ANGLe T0 B0 Tda 5.971 100` |
| `T0-TDA-TDA` | L2175: `ANGLe Tda Tda T0 5.971 100` | L2370: `ANGLe T0 Tda Tda 5.971 100` |
| `T0-T0-TDA` | L2189: `ANGLe Tda T0 T0 5.971 100` | L2384: `ANGLe T0 T0 Tda 5.971 100` |
| `T0-HP5-TDA` | L2203: `ANGLe Tda HP5 T0 5.971 100` | L2398: `ANGLe T0 HP5 Tda 5.971 100` |
| `T0-HP0-TDA` | L2217: `ANGLe Tda HP0 T0 5.971 100` | L2412: `ANGLe T0 HP0 Tda 5.971 100` |
| `T0-HPA-TDA` | L2231: `ANGLe Tda HPa T0 5.971 100` | L2426: `ANGLe T0 HPa Tda 5.971 100` |
| `HP0-F4-HP5` | L2443: `ANGLe HP5 F4 HP0 23.883 98` | L2638: `ANGLe HP0 F4 HP5 23.883 98` |
| `HP5-F4-HPA` | L2444: `ANGLe HP5 F4 HPa 23.883 98` | L2834: `ANGLe HPa F4 HP5 23.883 98` |
| `HP0-F5-HP5` | L2457: `ANGLe HP5 F5 HP0 23.883 98` | L2652: `ANGLe HP0 F5 HP5 23.883 98` |
| `HP5-F5-HPA` | L2458: `ANGLe HP5 F5 HPa 23.883 98` | L2848: `ANGLe HPa F5 HP5 23.883 98` |
| `HP0-H0-HP5` | L2471: `ANGLe HP5 H0 HP0 23.883 98` | L2666: `ANGLe HP0 H0 HP5 23.883 98` |
| `HP5-H0-HPA` | L2472: `ANGLe HP5 H0 HPa 23.883 98` | L2862: `ANGLe HPa H0 HP5 23.883 98` |
| `HP0-H5-HP5` | L2485: `ANGLe HP5 H5 HP0 23.883 98` | L2680: `ANGLe HP0 H5 HP5 23.883 98` |
| `HP5-H5-HPA` | L2486: `ANGLe HP5 H5 HPa 23.883 98` | L2876: `ANGLe HPa H5 HP5 23.883 98` |
| `HP0-HD-HP5` | L2499: `ANGLe HP5 Hd HP0 23.883 98` | L2694: `ANGLe HP0 Hd HP5 23.883 98` |
| `HP5-HD-HPA` | L2500: `ANGLe HP5 Hd HPa 23.883 98` | L2890: `ANGLe HPa Hd HP5 23.883 98` |
| `HP0-HA-HP5` | L2513: `ANGLe HP5 Ha HP0 23.883 98` | L2708: `ANGLe HP0 Ha HP5 23.883 98` |
| `HP5-HA-HPA` | L2514: `ANGLe HP5 Ha HPa 23.883 98` | L2904: `ANGLe HPa Ha HP5 23.883 98` |
| `HP0-HDA-HP5` | L2527: `ANGLe HP5 Hda HP0 23.883 98` | L2722: `ANGLe HP0 Hda HP5 23.883 98` |
| `HP5-HDA-HPA` | L2528: `ANGLe HP5 Hda HPa 23.883 98` | L2918: `ANGLe HPa Hda HP5 23.883 98` |
| `HP0-BDA-HP5` | L2541: `ANGLe HP5 Bda HP0 23.883 98` | L2736: `ANGLe HP0 Bda HP5 23.883 98` |
| `HP5-BDA-HPA` | L2542: `ANGLe HP5 Bda HPa 23.883 98` | L2932: `ANGLe HPa Bda HP5 23.883 98` |
| `HP0-B0-HP5` | L2555: `ANGLe HP5 B0 HP0 23.883 98` | L2750: `ANGLe HP0 B0 HP5 23.883 98` |
| `HP5-B0-HPA` | L2556: `ANGLe HP5 B0 HPa 23.883 98` | L2946: `ANGLe HPa B0 HP5 23.883 98` |
| `HP0-TDA-HP5` | L2569: `ANGLe HP5 Tda HP0 23.883 98` | L2764: `ANGLe HP0 Tda HP5 23.883 98` |
| `HP5-TDA-HPA` | L2570: `ANGLe HP5 Tda HPa 23.883 98` | L2960: `ANGLe HPa Tda HP5 23.883 98` |
| `HP0-T0-HP5` | L2583: `ANGLe HP5 T0 HP0 23.883 98` | L2778: `ANGLe HP0 T0 HP5 23.883 98` |
| `HP5-T0-HPA` | L2584: `ANGLe HP5 T0 HPa 23.883 98` | L2974: `ANGLe HPa T0 HP5 23.883 98` |
| `HP0-HP5-HP5` | L2597: `ANGLe HP5 HP5 HP0 23.883 98` | L2792: `ANGLe HP0 HP5 HP5 23.883 98` |
| `HP5-HP5-HPA` | L2598: `ANGLe HP5 HP5 HPa 23.883 98` | L2988: `ANGLe HPa HP5 HP5 23.883 98` |
| `HP0-HP0-HP5` | L2611: `ANGLe HP5 HP0 HP0 23.883 98` | L2806: `ANGLe HP0 HP0 HP5 23.883 98` |
| `HP5-HP0-HPA` | L2612: `ANGLe HP5 HP0 HPa 23.883 98` | L3002: `ANGLe HPa HP0 HP5 23.883 98` |
| `HP0-HPA-HP5` | L2625: `ANGLe HP5 HPa HP0 23.883 98` | L2820: `ANGLe HP0 HPa HP5 23.883 98` |
| `HP5-HPA-HPA` | L2626: `ANGLe HP5 HPa HPa 23.883 98` | L3016: `ANGLe HPa HPa HP5 23.883 98` |
| `HP0-F4-HPA` | L2640: `ANGLe HP0 F4 HPa 23.883 98` | L2835: `ANGLe HPa F4 HP0 23.883 98` |
| `HP0-F5-HPA` | L2654: `ANGLe HP0 F5 HPa 23.883 98` | L2849: `ANGLe HPa F5 HP0 23.883 98` |
| `HP0-H0-HPA` | L2668: `ANGLe HP0 H0 HPa 23.883 98` | L2863: `ANGLe HPa H0 HP0 23.883 98` |
| `HP0-H5-HPA` | L2682: `ANGLe HP0 H5 HPa 23.883 98` | L2877: `ANGLe HPa H5 HP0 23.883 98` |
| `HP0-HD-HPA` | L2696: `ANGLe HP0 Hd HPa 23.883 98` | L2891: `ANGLe HPa Hd HP0 23.883 98` |
| `HP0-HA-HPA` | L2710: `ANGLe HP0 Ha HPa 23.883 98` | L2905: `ANGLe HPa Ha HP0 23.883 98` |
| `HP0-HDA-HPA` | L2724: `ANGLe HP0 Hda HPa 23.883 98` | L2919: `ANGLe HPa Hda HP0 23.883 98` |
| `HP0-BDA-HPA` | L2738: `ANGLe HP0 Bda HPa 23.883 98` | L2933: `ANGLe HPa Bda HP0 23.883 98` |
| `HP0-B0-HPA` | L2752: `ANGLe HP0 B0 HPa 23.883 98` | L2947: `ANGLe HPa B0 HP0 23.883 98` |
| `HP0-TDA-HPA` | L2766: `ANGLe HP0 Tda HPa 23.883 98` | L2961: `ANGLe HPa Tda HP0 23.883 98` |
| `HP0-T0-HPA` | L2780: `ANGLe HP0 T0 HPa 23.883 98` | L2975: `ANGLe HPa T0 HP0 23.883 98` |
| `HP0-HP5-HPA` | L2794: `ANGLe HP0 HP5 HPa 23.883 98` | L2989: `ANGLe HPa HP5 HP0 23.883 98` |
| `HP0-HP0-HPA` | L2808: `ANGLe HP0 HP0 HPa 23.883 98` | L3003: `ANGLe HPa HP0 HP0 23.883 98` |
| `HP0-HPA-HPA` | L2822: `ANGLe HP0 HPa HPa 23.883 98` | L3017: `ANGLe HPa HPa HP0 23.883 98` |
| `F4-F4-HC4` | L3609: `ANGLe F4 F4 HC4 5.971 100` | L6353: `ANGLe F4 F4 HC4 5.971 100` |
| `F4-F5-HC4` | L3610: `ANGLe F4 F5 HC4 5.971 100` | L6354: `ANGLe F4 F5 HC4 5.971 100` |
| `F4-H0-HC4` | L3611: `ANGLe F4 H0 HC4 5.971 100` | L6355: `ANGLe F4 H0 HC4 5.971 100` |
| `F4-H5-HC4` | L3612: `ANGLe F4 H5 HC4 5.971 100` | L6356: `ANGLe F4 H5 HC4 5.971 100` |
| `F4-HD-HC4` | L3613: `ANGLe F4 Hd HC4 5.971 100` | L6357: `ANGLe F4 Hd HC4 5.971 100` |
| `F4-HA-HC4` | L3614: `ANGLe F4 Ha HC4 5.971 100` | L6358: `ANGLe F4 Ha HC4 5.971 100` |
| `F4-HDA-HC4` | L3615: `ANGLe F4 Hda HC4 5.971 100` | L6359: `ANGLe F4 Hda HC4 5.971 100` |
| `F4-BDA-HC4` | L3616: `ANGLe F4 Bda HC4 5.971 100` | L6360: `ANGLe F4 Bda HC4 5.971 100` |
| `F4-B0-HC4` | L3617: `ANGLe F4 B0 HC4 5.971 100` | L6361: `ANGLe F4 B0 HC4 5.971 100` |
| `F4-TDA-HC4` | L3618: `ANGLe F4 Tda HC4 5.971 100` | L6362: `ANGLe F4 Tda HC4 5.971 100` |
| `F4-T0-HC4` | L3619: `ANGLe F4 T0 HC4 5.971 100` | L6363: `ANGLe F4 T0 HC4 5.971 100` |
| `F4-HP5-HC4` | L3620: `ANGLe F4 HP5 HC4 5.971 100` | L6364: `ANGLe F4 HP5 HC4 5.971 100` |
| `F4-HP0-HC4` | L3621: `ANGLe F4 HP0 HC4 5.971 100` | L6365: `ANGLe F4 HP0 HC4 5.971 100` |
| `F4-HPA-HC4` | L3622: `ANGLe F4 HPa HC4 5.971 100` | L6366: `ANGLe F4 HPa HC4 5.971 100` |
| `F5-F4-HC4` | L3623: `ANGLe F5 F4 HC4 5.971 100` | L6367: `ANGLe F5 F4 HC4 5.971 100` |
| `F5-F5-HC4` | L3624: `ANGLe F5 F5 HC4 5.971 100` | L6368: `ANGLe F5 F5 HC4 5.971 100` |
| `F5-H0-HC4` | L3625: `ANGLe F5 H0 HC4 5.971 100` | L6369: `ANGLe F5 H0 HC4 5.971 100` |
| `F5-H5-HC4` | L3626: `ANGLe F5 H5 HC4 5.971 100` | L6370: `ANGLe F5 H5 HC4 5.971 100` |
| `F5-HD-HC4` | L3627: `ANGLe F5 Hd HC4 5.971 100` | L6371: `ANGLe F5 Hd HC4 5.971 100` |
| `F5-HA-HC4` | L3628: `ANGLe F5 Ha HC4 5.971 100` | L6372: `ANGLe F5 Ha HC4 5.971 100` |
| `F5-HDA-HC4` | L3629: `ANGLe F5 Hda HC4 5.971 100` | L6373: `ANGLe F5 Hda HC4 5.971 100` |
| `F5-BDA-HC4` | L3630: `ANGLe F5 Bda HC4 5.971 100` | L6374: `ANGLe F5 Bda HC4 5.971 100` |
| `F5-B0-HC4` | L3631: `ANGLe F5 B0 HC4 5.971 100` | L6375: `ANGLe F5 B0 HC4 5.971 100` |
| `F5-TDA-HC4` | L3632: `ANGLe F5 Tda HC4 5.971 100` | L6376: `ANGLe F5 Tda HC4 5.971 100` |
| `F5-T0-HC4` | L3633: `ANGLe F5 T0 HC4 5.971 100` | L6377: `ANGLe F5 T0 HC4 5.971 100` |
| `F5-HP5-HC4` | L3634: `ANGLe F5 HP5 HC4 5.971 100` | L6378: `ANGLe F5 HP5 HC4 5.971 100` |
| `F5-HP0-HC4` | L3635: `ANGLe F5 HP0 HC4 5.971 100` | L6379: `ANGLe F5 HP0 HC4 5.971 100` |
| `F5-HPA-HC4` | L3636: `ANGLe F5 HPa HC4 5.971 100` | L6380: `ANGLe F5 HPa HC4 5.971 100` |
| `H0-F4-HC4` | L3637: `ANGLe H0 F4 HC4 5.971 100` | L6381: `ANGLe H0 F4 HC4 5.971 100` |
| `H0-F5-HC4` | L3638: `ANGLe H0 F5 HC4 5.971 100` | L6382: `ANGLe H0 F5 HC4 5.971 100` |
| `H0-H0-HC4` | L3639: `ANGLe H0 H0 HC4 5.971 100` | L6383: `ANGLe H0 H0 HC4 5.971 100` |
| `H0-H5-HC4` | L3640: `ANGLe H0 H5 HC4 5.971 100` | L6384: `ANGLe H0 H5 HC4 5.971 100` |
| `H0-HD-HC4` | L3641: `ANGLe H0 Hd HC4 5.971 100` | L6385: `ANGLe H0 Hd HC4 5.971 100` |
| `H0-HA-HC4` | L3642: `ANGLe H0 Ha HC4 5.971 100` | L6386: `ANGLe H0 Ha HC4 5.971 100` |
| `H0-HDA-HC4` | L3643: `ANGLe H0 Hda HC4 5.971 100` | L6387: `ANGLe H0 Hda HC4 5.971 100` |
| `H0-BDA-HC4` | L3644: `ANGLe H0 Bda HC4 5.971 100` | L6388: `ANGLe H0 Bda HC4 5.971 100` |
| `H0-B0-HC4` | L3645: `ANGLe H0 B0 HC4 5.971 100` | L6389: `ANGLe H0 B0 HC4 5.971 100` |
| `H0-TDA-HC4` | L3646: `ANGLe H0 Tda HC4 5.971 100` | L6390: `ANGLe H0 Tda HC4 5.971 100` |
| `H0-T0-HC4` | L3647: `ANGLe H0 T0 HC4 5.971 100` | L6391: `ANGLe H0 T0 HC4 5.971 100` |
| `H0-HP5-HC4` | L3648: `ANGLe H0 HP5 HC4 5.971 100` | L6392: `ANGLe H0 HP5 HC4 5.971 100` |
| `H0-HP0-HC4` | L3649: `ANGLe H0 HP0 HC4 5.971 100` | L6393: `ANGLe H0 HP0 HC4 5.971 100` |
| `H0-HPA-HC4` | L3650: `ANGLe H0 HPa HC4 5.971 100` | L6394: `ANGLe H0 HPa HC4 5.971 100` |
| `H5-F4-HC4` | L3651: `ANGLe H5 F4 HC4 5.971 100` | L6395: `ANGLe H5 F4 HC4 5.971 100` |
| `H5-F5-HC4` | L3652: `ANGLe H5 F5 HC4 5.971 100` | L6396: `ANGLe H5 F5 HC4 5.971 100` |
| `H5-H0-HC4` | L3653: `ANGLe H5 H0 HC4 5.971 100` | L6397: `ANGLe H5 H0 HC4 5.971 100` |
| `H5-H5-HC4` | L3654: `ANGLe H5 H5 HC4 5.971 100` | L6398: `ANGLe H5 H5 HC4 5.971 100` |
| `H5-HD-HC4` | L3655: `ANGLe H5 Hd HC4 5.971 100` | L6399: `ANGLe H5 Hd HC4 5.971 100` |
| `H5-HA-HC4` | L3656: `ANGLe H5 Ha HC4 5.971 100` | L6400: `ANGLe H5 Ha HC4 5.971 100` |
| `H5-HDA-HC4` | L3657: `ANGLe H5 Hda HC4 5.971 100` | L6401: `ANGLe H5 Hda HC4 5.971 100` |
| `H5-BDA-HC4` | L3658: `ANGLe H5 Bda HC4 5.971 100` | L6402: `ANGLe H5 Bda HC4 5.971 100` |
| `H5-B0-HC4` | L3659: `ANGLe H5 B0 HC4 5.971 100` | L6403: `ANGLe H5 B0 HC4 5.971 100` |
| `H5-TDA-HC4` | L3660: `ANGLe H5 Tda HC4 5.971 100` | L6404: `ANGLe H5 Tda HC4 5.971 100` |
| `H5-T0-HC4` | L3661: `ANGLe H5 T0 HC4 5.971 100` | L6405: `ANGLe H5 T0 HC4 5.971 100` |
| `H5-HP5-HC4` | L3662: `ANGLe H5 HP5 HC4 5.971 100` | L6406: `ANGLe H5 HP5 HC4 5.971 100` |
| `H5-HP0-HC4` | L3663: `ANGLe H5 HP0 HC4 5.971 100` | L6407: `ANGLe H5 HP0 HC4 5.971 100` |
| `H5-HPA-HC4` | L3664: `ANGLe H5 HPa HC4 5.971 100` | L6408: `ANGLe H5 HPa HC4 5.971 100` |
| `HC4-F4-HD` | L3665: `ANGLe Hd F4 HC4 5.971 100` | L6409: `ANGLe Hd F4 HC4 5.971 100` |
| `HC4-F5-HD` | L3666: `ANGLe Hd F5 HC4 5.971 100` | L6410: `ANGLe Hd F5 HC4 5.971 100` |
| `HC4-H0-HD` | L3667: `ANGLe Hd H0 HC4 5.971 100` | L6411: `ANGLe Hd H0 HC4 5.971 100` |
| `HC4-H5-HD` | L3668: `ANGLe Hd H5 HC4 5.971 100` | L6412: `ANGLe Hd H5 HC4 5.971 100` |
| `HC4-HD-HD` | L3669: `ANGLe Hd Hd HC4 5.971 100` | L6413: `ANGLe Hd Hd HC4 5.971 100` |
| `HC4-HA-HD` | L3670: `ANGLe Hd Ha HC4 5.971 100` | L6414: `ANGLe Hd Ha HC4 5.971 100` |
| `HC4-HDA-HD` | L3671: `ANGLe Hd Hda HC4 5.971 100` | L6415: `ANGLe Hd Hda HC4 5.971 100` |
| `HC4-BDA-HD` | L3672: `ANGLe Hd Bda HC4 5.971 100` | L6416: `ANGLe Hd Bda HC4 5.971 100` |
| `HC4-B0-HD` | L3673: `ANGLe Hd B0 HC4 5.971 100` | L6417: `ANGLe Hd B0 HC4 5.971 100` |
| `HC4-TDA-HD` | L3674: `ANGLe Hd Tda HC4 5.971 100` | L6418: `ANGLe Hd Tda HC4 5.971 100` |
| `HC4-T0-HD` | L3675: `ANGLe Hd T0 HC4 5.971 100` | L6419: `ANGLe Hd T0 HC4 5.971 100` |
| `HC4-HP5-HD` | L3676: `ANGLe Hd HP5 HC4 5.971 100` | L6420: `ANGLe Hd HP5 HC4 5.971 100` |
| `HC4-HP0-HD` | L3677: `ANGLe Hd HP0 HC4 5.971 100` | L6421: `ANGLe Hd HP0 HC4 5.971 100` |
| `HC4-HPA-HD` | L3678: `ANGLe Hd HPa HC4 5.971 100` | L6422: `ANGLe Hd HPa HC4 5.971 100` |
| `HA-F4-HC4` | L3679: `ANGLe Ha F4 HC4 5.971 100` | L6423: `ANGLe Ha F4 HC4 5.971 100` |
| `HA-F5-HC4` | L3680: `ANGLe Ha F5 HC4 5.971 100` | L6424: `ANGLe Ha F5 HC4 5.971 100` |
| `HA-H0-HC4` | L3681: `ANGLe Ha H0 HC4 5.971 100` | L6425: `ANGLe Ha H0 HC4 5.971 100` |
| `HA-H5-HC4` | L3682: `ANGLe Ha H5 HC4 5.971 100` | L6426: `ANGLe Ha H5 HC4 5.971 100` |
| `HA-HD-HC4` | L3683: `ANGLe Ha Hd HC4 5.971 100` | L6427: `ANGLe Ha Hd HC4 5.971 100` |
| `HA-HA-HC4` | L3684: `ANGLe Ha Ha HC4 5.971 100` | L6428: `ANGLe Ha Ha HC4 5.971 100` |
| `HA-HDA-HC4` | L3685: `ANGLe Ha Hda HC4 5.971 100` | L6429: `ANGLe Ha Hda HC4 5.971 100` |
| `HA-BDA-HC4` | L3686: `ANGLe Ha Bda HC4 5.971 100` | L6430: `ANGLe Ha Bda HC4 5.971 100` |
| `HA-B0-HC4` | L3687: `ANGLe Ha B0 HC4 5.971 100` | L6431: `ANGLe Ha B0 HC4 5.971 100` |
| `HA-TDA-HC4` | L3688: `ANGLe Ha Tda HC4 5.971 100` | L6432: `ANGLe Ha Tda HC4 5.971 100` |
| `HA-T0-HC4` | L3689: `ANGLe Ha T0 HC4 5.971 100` | L6433: `ANGLe Ha T0 HC4 5.971 100` |
| `HA-HP5-HC4` | L3690: `ANGLe Ha HP5 HC4 5.971 100` | L6434: `ANGLe Ha HP5 HC4 5.971 100` |
| `HA-HP0-HC4` | L3691: `ANGLe Ha HP0 HC4 5.971 100` | L6435: `ANGLe Ha HP0 HC4 5.971 100` |
| `HA-HPA-HC4` | L3692: `ANGLe Ha HPa HC4 5.971 100` | L6436: `ANGLe Ha HPa HC4 5.971 100` |
| `HC4-F4-HDA` | L3693: `ANGLe Hda F4 HC4 5.971 100` | L6437: `ANGLe Hda F4 HC4 5.971 100` |
| `HC4-F5-HDA` | L3694: `ANGLe Hda F5 HC4 5.971 100` | L6438: `ANGLe Hda F5 HC4 5.971 100` |
| `HC4-H0-HDA` | L3695: `ANGLe Hda H0 HC4 5.971 100` | L6439: `ANGLe Hda H0 HC4 5.971 100` |
| `HC4-H5-HDA` | L3696: `ANGLe Hda H5 HC4 5.971 100` | L6440: `ANGLe Hda H5 HC4 5.971 100` |
| `HC4-HD-HDA` | L3697: `ANGLe Hda Hd HC4 5.971 100` | L6441: `ANGLe Hda Hd HC4 5.971 100` |
| `HC4-HA-HDA` | L3698: `ANGLe Hda Ha HC4 5.971 100` | L6442: `ANGLe Hda Ha HC4 5.971 100` |
| `HC4-HDA-HDA` | L3699: `ANGLe Hda Hda HC4 5.971 100` | L6443: `ANGLe Hda Hda HC4 5.971 100` |
| `HC4-BDA-HDA` | L3700: `ANGLe Hda Bda HC4 5.971 100` | L6444: `ANGLe Hda Bda HC4 5.971 100` |
| `HC4-B0-HDA` | L3701: `ANGLe Hda B0 HC4 5.971 100` | L6445: `ANGLe Hda B0 HC4 5.971 100` |
| `HC4-TDA-HDA` | L3702: `ANGLe Hda Tda HC4 5.971 100` | L6446: `ANGLe Hda Tda HC4 5.971 100` |
| `HC4-T0-HDA` | L3703: `ANGLe Hda T0 HC4 5.971 100` | L6447: `ANGLe Hda T0 HC4 5.971 100` |
| `HC4-HP5-HDA` | L3704: `ANGLe Hda HP5 HC4 5.971 100` | L6448: `ANGLe Hda HP5 HC4 5.971 100` |
| `HC4-HP0-HDA` | L3705: `ANGLe Hda HP0 HC4 5.971 100` | L6449: `ANGLe Hda HP0 HC4 5.971 100` |
| `HC4-HPA-HDA` | L3706: `ANGLe Hda HPa HC4 5.971 100` | L6450: `ANGLe Hda HPa HC4 5.971 100` |
| `BDA-F4-HC4` | L3707: `ANGLe Bda F4 HC4 5.971 100` | L6451: `ANGLe Bda F4 HC4 5.971 100` |
| `BDA-F5-HC4` | L3708: `ANGLe Bda F5 HC4 5.971 100` | L6452: `ANGLe Bda F5 HC4 5.971 100` |
| `BDA-H0-HC4` | L3709: `ANGLe Bda H0 HC4 5.971 100` | L6453: `ANGLe Bda H0 HC4 5.971 100` |
| `BDA-H5-HC4` | L3710: `ANGLe Bda H5 HC4 5.971 100` | L6454: `ANGLe Bda H5 HC4 5.971 100` |
| `BDA-HD-HC4` | L3711: `ANGLe Bda Hd HC4 5.971 100` | L6455: `ANGLe Bda Hd HC4 5.971 100` |
| `BDA-HA-HC4` | L3712: `ANGLe Bda Ha HC4 5.971 100` | L6456: `ANGLe Bda Ha HC4 5.971 100` |
| `BDA-HDA-HC4` | L3713: `ANGLe Bda Hda HC4 5.971 100` | L6457: `ANGLe Bda Hda HC4 5.971 100` |
| `BDA-BDA-HC4` | L3714: `ANGLe Bda Bda HC4 5.971 100` | L6458: `ANGLe Bda Bda HC4 5.971 100` |
| `BDA-B0-HC4` | L3715: `ANGLe Bda B0 HC4 5.971 100` | L6459: `ANGLe Bda B0 HC4 5.971 100` |
| `BDA-TDA-HC4` | L3716: `ANGLe Bda Tda HC4 5.971 100` | L6460: `ANGLe Bda Tda HC4 5.971 100` |
| `BDA-T0-HC4` | L3717: `ANGLe Bda T0 HC4 5.971 100` | L6461: `ANGLe Bda T0 HC4 5.971 100` |
| `BDA-HP5-HC4` | L3718: `ANGLe Bda HP5 HC4 5.971 100` | L6462: `ANGLe Bda HP5 HC4 5.971 100` |
| `BDA-HP0-HC4` | L3719: `ANGLe Bda HP0 HC4 5.971 100` | L6463: `ANGLe Bda HP0 HC4 5.971 100` |
| `BDA-HPA-HC4` | L3720: `ANGLe Bda HPa HC4 5.971 100` | L6464: `ANGLe Bda HPa HC4 5.971 100` |
| `B0-F4-HC4` | L3721: `ANGLe B0 F4 HC4 5.971 100` | L6465: `ANGLe B0 F4 HC4 5.971 100` |
| `B0-F5-HC4` | L3722: `ANGLe B0 F5 HC4 5.971 100` | L6466: `ANGLe B0 F5 HC4 5.971 100` |
| `B0-H0-HC4` | L3723: `ANGLe B0 H0 HC4 5.971 100` | L6467: `ANGLe B0 H0 HC4 5.971 100` |
| `B0-H5-HC4` | L3724: `ANGLe B0 H5 HC4 5.971 100` | L6468: `ANGLe B0 H5 HC4 5.971 100` |
| `B0-HD-HC4` | L3725: `ANGLe B0 Hd HC4 5.971 100` | L6469: `ANGLe B0 Hd HC4 5.971 100` |
| `B0-HA-HC4` | L3726: `ANGLe B0 Ha HC4 5.971 100` | L6470: `ANGLe B0 Ha HC4 5.971 100` |
| `B0-HDA-HC4` | L3727: `ANGLe B0 Hda HC4 5.971 100` | L6471: `ANGLe B0 Hda HC4 5.971 100` |
| `B0-BDA-HC4` | L3728: `ANGLe B0 Bda HC4 5.971 100` | L6472: `ANGLe B0 Bda HC4 5.971 100` |
| `B0-B0-HC4` | L3729: `ANGLe B0 B0 HC4 5.971 100` | L6473: `ANGLe B0 B0 HC4 5.971 100` |
| `B0-TDA-HC4` | L3730: `ANGLe B0 Tda HC4 5.971 100` | L6474: `ANGLe B0 Tda HC4 5.971 100` |
| `B0-T0-HC4` | L3731: `ANGLe B0 T0 HC4 5.971 100` | L6475: `ANGLe B0 T0 HC4 5.971 100` |
| `B0-HP5-HC4` | L3732: `ANGLe B0 HP5 HC4 5.971 100` | L6476: `ANGLe B0 HP5 HC4 5.971 100` |
| `B0-HP0-HC4` | L3733: `ANGLe B0 HP0 HC4 5.971 100` | L6477: `ANGLe B0 HP0 HC4 5.971 100` |
| `B0-HPA-HC4` | L3734: `ANGLe B0 HPa HC4 5.971 100` | L6478: `ANGLe B0 HPa HC4 5.971 100` |
| `HC4-F4-TDA` | L3735: `ANGLe Tda F4 HC4 5.971 100` | L6479: `ANGLe Tda F4 HC4 5.971 100` |
| `HC4-F5-TDA` | L3736: `ANGLe Tda F5 HC4 5.971 100` | L6480: `ANGLe Tda F5 HC4 5.971 100` |
| `HC4-H0-TDA` | L3737: `ANGLe Tda H0 HC4 5.971 100` | L6481: `ANGLe Tda H0 HC4 5.971 100` |
| `HC4-H5-TDA` | L3738: `ANGLe Tda H5 HC4 5.971 100` | L6482: `ANGLe Tda H5 HC4 5.971 100` |
| `HC4-HD-TDA` | L3739: `ANGLe Tda Hd HC4 5.971 100` | L6483: `ANGLe Tda Hd HC4 5.971 100` |
| `HC4-HA-TDA` | L3740: `ANGLe Tda Ha HC4 5.971 100` | L6484: `ANGLe Tda Ha HC4 5.971 100` |
| `HC4-HDA-TDA` | L3741: `ANGLe Tda Hda HC4 5.971 100` | L6485: `ANGLe Tda Hda HC4 5.971 100` |
| `HC4-BDA-TDA` | L3742: `ANGLe Tda Bda HC4 5.971 100` | L6486: `ANGLe Tda Bda HC4 5.971 100` |
| `HC4-B0-TDA` | L3743: `ANGLe Tda B0 HC4 5.971 100` | L6487: `ANGLe Tda B0 HC4 5.971 100` |
| `HC4-TDA-TDA` | L3744: `ANGLe Tda Tda HC4 5.971 100` | L6488: `ANGLe Tda Tda HC4 5.971 100` |
| `HC4-T0-TDA` | L3745: `ANGLe Tda T0 HC4 5.971 100` | L6489: `ANGLe Tda T0 HC4 5.971 100` |
| `HC4-HP5-TDA` | L3746: `ANGLe Tda HP5 HC4 5.971 100` | L6490: `ANGLe Tda HP5 HC4 5.971 100` |
| `HC4-HP0-TDA` | L3747: `ANGLe Tda HP0 HC4 5.971 100` | L6491: `ANGLe Tda HP0 HC4 5.971 100` |
| `HC4-HPA-TDA` | L3748: `ANGLe Tda HPa HC4 5.971 100` | L6492: `ANGLe Tda HPa HC4 5.971 100` |
| `HC4-F4-T0` | L3749: `ANGLe T0 F4 HC4 5.971 100` | L6493: `ANGLe T0 F4 HC4 5.971 100` |
| `HC4-F5-T0` | L3750: `ANGLe T0 F5 HC4 5.971 100` | L6494: `ANGLe T0 F5 HC4 5.971 100` |
| `HC4-H0-T0` | L3751: `ANGLe T0 H0 HC4 5.971 100` | L6495: `ANGLe T0 H0 HC4 5.971 100` |
| `HC4-H5-T0` | L3752: `ANGLe T0 H5 HC4 5.971 100` | L6496: `ANGLe T0 H5 HC4 5.971 100` |
| `HC4-HD-T0` | L3753: `ANGLe T0 Hd HC4 5.971 100` | L6497: `ANGLe T0 Hd HC4 5.971 100` |
| `HC4-HA-T0` | L3754: `ANGLe T0 Ha HC4 5.971 100` | L6498: `ANGLe T0 Ha HC4 5.971 100` |
| `HC4-HDA-T0` | L3755: `ANGLe T0 Hda HC4 5.971 100` | L6499: `ANGLe T0 Hda HC4 5.971 100` |
| `HC4-BDA-T0` | L3756: `ANGLe T0 Bda HC4 5.971 100` | L6500: `ANGLe T0 Bda HC4 5.971 100` |
| `HC4-B0-T0` | L3757: `ANGLe T0 B0 HC4 5.971 100` | L6501: `ANGLe T0 B0 HC4 5.971 100` |
| `HC4-TDA-T0` | L3758: `ANGLe T0 Tda HC4 5.971 100` | L6502: `ANGLe T0 Tda HC4 5.971 100` |
| `HC4-T0-T0` | L3759: `ANGLe T0 T0 HC4 5.971 100` | L6503: `ANGLe T0 T0 HC4 5.971 100` |
| `HC4-HP5-T0` | L3760: `ANGLe T0 HP5 HC4 5.971 100` | L6504: `ANGLe T0 HP5 HC4 5.971 100` |
| `HC4-HP0-T0` | L3761: `ANGLe T0 HP0 HC4 5.971 100` | L6505: `ANGLe T0 HP0 HC4 5.971 100` |
| `HC4-HPA-T0` | L3762: `ANGLe T0 HPa HC4 5.971 100` | L6506: `ANGLe T0 HPa HC4 5.971 100` |
| `HC4-F4-HP5` | L3763: `ANGLe HP5 F4 HC4 5.971 100` | L6507: `ANGLe HP5 F4 HC4 5.971 100` |
| `HC4-F5-HP5` | L3764: `ANGLe HP5 F5 HC4 5.971 100` | L6508: `ANGLe HP5 F5 HC4 5.971 100` |
| `HC4-H0-HP5` | L3765: `ANGLe HP5 H0 HC4 5.971 100` | L6509: `ANGLe HP5 H0 HC4 5.971 100` |
| `HC4-H5-HP5` | L3766: `ANGLe HP5 H5 HC4 5.971 100` | L6510: `ANGLe HP5 H5 HC4 5.971 100` |
| `HC4-HD-HP5` | L3767: `ANGLe HP5 Hd HC4 5.971 100` | L6511: `ANGLe HP5 Hd HC4 5.971 100` |
| `HC4-HA-HP5` | L3768: `ANGLe HP5 Ha HC4 5.971 100` | L6512: `ANGLe HP5 Ha HC4 5.971 100` |
| `HC4-HDA-HP5` | L3769: `ANGLe HP5 Hda HC4 5.971 100` | L6513: `ANGLe HP5 Hda HC4 5.971 100` |
| `HC4-BDA-HP5` | L3770: `ANGLe HP5 Bda HC4 5.971 100` | L6514: `ANGLe HP5 Bda HC4 5.971 100` |
| `HC4-B0-HP5` | L3771: `ANGLe HP5 B0 HC4 5.971 100` | L6515: `ANGLe HP5 B0 HC4 5.971 100` |
| `HC4-TDA-HP5` | L3772: `ANGLe HP5 Tda HC4 5.971 100` | L6516: `ANGLe HP5 Tda HC4 5.971 100` |
| `HC4-T0-HP5` | L3773: `ANGLe HP5 T0 HC4 5.971 100` | L6517: `ANGLe HP5 T0 HC4 5.971 100` |
| `HC4-HP5-HP5` | L3774: `ANGLe HP5 HP5 HC4 5.971 100` | L6518: `ANGLe HP5 HP5 HC4 5.971 100` |
| `HC4-HP0-HP5` | L3775: `ANGLe HP5 HP0 HC4 5.971 100` | L6519: `ANGLe HP5 HP0 HC4 5.971 100` |
| `HC4-HPA-HP5` | L3776: `ANGLe HP5 HPa HC4 5.971 100` | L6520: `ANGLe HP5 HPa HC4 5.971 100` |
| `HC4-F4-HP0` | L3777: `ANGLe HP0 F4 HC4 5.971 100` | L6521: `ANGLe HP0 F4 HC4 5.971 100` |
| `HC4-F5-HP0` | L3778: `ANGLe HP0 F5 HC4 5.971 100` | L6522: `ANGLe HP0 F5 HC4 5.971 100` |
| `HC4-H0-HP0` | L3779: `ANGLe HP0 H0 HC4 5.971 100` | L6523: `ANGLe HP0 H0 HC4 5.971 100` |
| `HC4-H5-HP0` | L3780: `ANGLe HP0 H5 HC4 5.971 100` | L6524: `ANGLe HP0 H5 HC4 5.971 100` |
| `HC4-HD-HP0` | L3781: `ANGLe HP0 Hd HC4 5.971 100` | L6525: `ANGLe HP0 Hd HC4 5.971 100` |
| `HC4-HA-HP0` | L3782: `ANGLe HP0 Ha HC4 5.971 100` | L6526: `ANGLe HP0 Ha HC4 5.971 100` |
| `HC4-HDA-HP0` | L3783: `ANGLe HP0 Hda HC4 5.971 100` | L6527: `ANGLe HP0 Hda HC4 5.971 100` |
| `HC4-BDA-HP0` | L3784: `ANGLe HP0 Bda HC4 5.971 100` | L6528: `ANGLe HP0 Bda HC4 5.971 100` |
| `HC4-B0-HP0` | L3785: `ANGLe HP0 B0 HC4 5.971 100` | L6529: `ANGLe HP0 B0 HC4 5.971 100` |
| `HC4-TDA-HP0` | L3786: `ANGLe HP0 Tda HC4 5.971 100` | L6530: `ANGLe HP0 Tda HC4 5.971 100` |
| `HC4-T0-HP0` | L3787: `ANGLe HP0 T0 HC4 5.971 100` | L6531: `ANGLe HP0 T0 HC4 5.971 100` |
| `HC4-HP5-HP0` | L3788: `ANGLe HP0 HP5 HC4 5.971 100` | L6532: `ANGLe HP0 HP5 HC4 5.971 100` |
| `HC4-HP0-HP0` | L3789: `ANGLe HP0 HP0 HC4 5.971 100` | L6533: `ANGLe HP0 HP0 HC4 5.971 100` |
| `HC4-HPA-HP0` | L3790: `ANGLe HP0 HPa HC4 5.971 100` | L6534: `ANGLe HP0 HPa HC4 5.971 100` |
| `HC4-F4-HPA` | L3791: `ANGLe HPa F4 HC4 5.971 100` | L6535: `ANGLe HPa F4 HC4 5.971 100` |
| `HC4-F5-HPA` | L3792: `ANGLe HPa F5 HC4 5.971 100` | L6536: `ANGLe HPa F5 HC4 5.971 100` |
| `HC4-H0-HPA` | L3793: `ANGLe HPa H0 HC4 5.971 100` | L6537: `ANGLe HPa H0 HC4 5.971 100` |
| `HC4-H5-HPA` | L3794: `ANGLe HPa H5 HC4 5.971 100` | L6538: `ANGLe HPa H5 HC4 5.971 100` |
| `HC4-HD-HPA` | L3795: `ANGLe HPa Hd HC4 5.971 100` | L6539: `ANGLe HPa Hd HC4 5.971 100` |
| `HC4-HA-HPA` | L3796: `ANGLe HPa Ha HC4 5.971 100` | L6540: `ANGLe HPa Ha HC4 5.971 100` |
| `HC4-HDA-HPA` | L3797: `ANGLe HPa Hda HC4 5.971 100` | L6541: `ANGLe HPa Hda HC4 5.971 100` |
| `HC4-BDA-HPA` | L3798: `ANGLe HPa Bda HC4 5.971 100` | L6542: `ANGLe HPa Bda HC4 5.971 100` |
| `HC4-B0-HPA` | L3799: `ANGLe HPa B0 HC4 5.971 100` | L6543: `ANGLe HPa B0 HC4 5.971 100` |
| `HC4-TDA-HPA` | L3800: `ANGLe HPa Tda HC4 5.971 100` | L6544: `ANGLe HPa Tda HC4 5.971 100` |
| `HC4-T0-HPA` | L3801: `ANGLe HPa T0 HC4 5.971 100` | L6545: `ANGLe HPa T0 HC4 5.971 100` |
| `HC4-HP5-HPA` | L3802: `ANGLe HPa HP5 HC4 5.971 100` | L6546: `ANGLe HPa HP5 HC4 5.971 100` |
| `HC4-HP0-HPA` | L3803: `ANGLe HPa HP0 HC4 5.971 100` | L6547: `ANGLe HPa HP0 HC4 5.971 100` |
| `HC4-HPA-HPA` | L3804: `ANGLe HPa HPa HC4 5.971 100` | L6548: `ANGLe HPa HPa HC4 5.971 100` |

**Total: 421 exact-duplicate groups removed.**

</details>

<details>
<summary><strong>Full list of the 294 conflicting pairs removed within 2° (side-by-side table) — ANGL-conflicts-removed.md</strong></summary>

# Conflicting `ANGLe` pairs removed within 2° tolerance

The **294** reverse-order conflicting `ANGLe` groups in `protein-CG-Martini-2-2.param` whose equilibrium-angle difference is **≤ 2°**. For each, the **first (earlier) instance was removed** and the **second kept**. CNS resolves repeated angle definitions by last-wins, so the second instance was already the one in effect — removal is behaviour-preserving. Line numbers are from the file state just before this removal.

| Triple | Removed (1st) | Kept (2nd) | Δangle |
|--------|---------------|------------|-------:|
| `H0-F4-HP5` | L664: `ANGLe H0 F4 HP5 167.184 96` | L2251: `ANGLe HP5 F4 H0 23.883 98` | 2° |
| `H0-F4-HP0` | L665: `ANGLe H0 F4 HP0 167.184 96` | L2447: `ANGLe HP0 F4 H0 23.883 98` | 2° |
| `H0-F4-HPA` | L666: `ANGLe H0 F4 HPa 167.184 96` | L2629: `ANGLe HPa F4 H0 23.883 98` | 2° |
| `H0-F5-HP5` | L678: `ANGLe H0 F5 HP5 167.184 96` | L2265: `ANGLe HP5 F5 H0 23.883 98` | 2° |
| `H0-F5-HP0` | L679: `ANGLe H0 F5 HP0 167.184 96` | L2460: `ANGLe HP0 F5 H0 23.883 98` | 2° |
| `H0-F5-HPA` | L680: `ANGLe H0 F5 HPa 167.184 96` | L2641: `ANGLe HPa F5 H0 23.883 98` | 2° |
| `H0-H0-HP5` | L692: `ANGLe H0 H0 HP5 167.184 96` | L2279: `ANGLe HP5 H0 H0 23.883 98` | 2° |
| `H0-H0-HP0` | L693: `ANGLe H0 H0 HP0 167.184 96` | L2473: `ANGLe HP0 H0 H0 23.883 98` | 2° |
| `H0-H0-HPA` | L694: `ANGLe H0 H0 HPa 167.184 96` | L2653: `ANGLe HPa H0 H0 23.883 98` | 2° |
| `H0-H5-HP5` | L706: `ANGLe H0 H5 HP5 167.184 96` | L2293: `ANGLe HP5 H5 H0 23.883 98` | 2° |
| `H0-H5-HP0` | L707: `ANGLe H0 H5 HP0 167.184 96` | L2486: `ANGLe HP0 H5 H0 23.883 98` | 2° |
| `H0-H5-HPA` | L708: `ANGLe H0 H5 HPa 167.184 96` | L2665: `ANGLe HPa H5 H0 23.883 98` | 2° |
| `H0-HD-HP5` | L720: `ANGLe H0 Hd HP5 167.184 96` | L2307: `ANGLe HP5 Hd H0 23.883 98` | 2° |
| `H0-HD-HP0` | L721: `ANGLe H0 Hd HP0 167.184 96` | L2499: `ANGLe HP0 Hd H0 23.883 98` | 2° |
| `H0-HD-HPA` | L722: `ANGLe H0 Hd HPa 167.184 96` | L2677: `ANGLe HPa Hd H0 23.883 98` | 2° |
| `H0-HA-HP5` | L734: `ANGLe H0 Ha HP5 167.184 96` | L2321: `ANGLe HP5 Ha H0 23.883 98` | 2° |
| `H0-HA-HP0` | L735: `ANGLe H0 Ha HP0 167.184 96` | L2512: `ANGLe HP0 Ha H0 23.883 98` | 2° |
| `H0-HA-HPA` | L736: `ANGLe H0 Ha HPa 167.184 96` | L2689: `ANGLe HPa Ha H0 23.883 98` | 2° |
| `H0-HDA-HP5` | L748: `ANGLe H0 Hda HP5 167.184 96` | L2335: `ANGLe HP5 Hda H0 23.883 98` | 2° |
| `H0-HDA-HP0` | L749: `ANGLe H0 Hda HP0 167.184 96` | L2525: `ANGLe HP0 Hda H0 23.883 98` | 2° |
| `H0-HDA-HPA` | L750: `ANGLe H0 Hda HPa 167.184 96` | L2701: `ANGLe HPa Hda H0 23.883 98` | 2° |
| `H0-BDA-HP5` | L762: `ANGLe H0 Bda HP5 167.184 96` | L2349: `ANGLe HP5 Bda H0 23.883 98` | 2° |
| `H0-BDA-HP0` | L763: `ANGLe H0 Bda HP0 167.184 96` | L2538: `ANGLe HP0 Bda H0 23.883 98` | 2° |
| `H0-BDA-HPA` | L764: `ANGLe H0 Bda HPa 167.184 96` | L2713: `ANGLe HPa Bda H0 23.883 98` | 2° |
| `H0-B0-HP5` | L776: `ANGLe H0 B0 HP5 167.184 96` | L2363: `ANGLe HP5 B0 H0 23.883 98` | 2° |
| `H0-B0-HP0` | L777: `ANGLe H0 B0 HP0 167.184 96` | L2551: `ANGLe HP0 B0 H0 23.883 98` | 2° |
| `H0-B0-HPA` | L778: `ANGLe H0 B0 HPa 167.184 96` | L2725: `ANGLe HPa B0 H0 23.883 98` | 2° |
| `H0-TDA-HP5` | L790: `ANGLe H0 Tda HP5 167.184 96` | L2377: `ANGLe HP5 Tda H0 23.883 98` | 2° |
| `H0-TDA-HP0` | L791: `ANGLe H0 Tda HP0 167.184 96` | L2564: `ANGLe HP0 Tda H0 23.883 98` | 2° |
| `H0-TDA-HPA` | L792: `ANGLe H0 Tda HPa 167.184 96` | L2737: `ANGLe HPa Tda H0 23.883 98` | 2° |
| `H0-T0-HP5` | L804: `ANGLe H0 T0 HP5 167.184 96` | L2391: `ANGLe HP5 T0 H0 23.883 98` | 2° |
| `H0-T0-HP0` | L805: `ANGLe H0 T0 HP0 167.184 96` | L2577: `ANGLe HP0 T0 H0 23.883 98` | 2° |
| `H0-T0-HPA` | L806: `ANGLe H0 T0 HPa 167.184 96` | L2749: `ANGLe HPa T0 H0 23.883 98` | 2° |
| `H0-HP5-HP5` | L818: `ANGLe H0 HP5 HP5 167.184 96` | L2405: `ANGLe HP5 HP5 H0 23.883 98` | 2° |
| `H0-HP5-HP0` | L819: `ANGLe H0 HP5 HP0 167.184 96` | L2590: `ANGLe HP0 HP5 H0 23.883 98` | 2° |
| `H0-HP5-HPA` | L820: `ANGLe H0 HP5 HPa 167.184 96` | L2761: `ANGLe HPa HP5 H0 23.883 98` | 2° |
| `H0-HP0-HP5` | L832: `ANGLe H0 HP0 HP5 167.184 96` | L2419: `ANGLe HP5 HP0 H0 23.883 98` | 2° |
| `H0-HP0-HP0` | L833: `ANGLe H0 HP0 HP0 167.184 96` | L2603: `ANGLe HP0 HP0 H0 23.883 98` | 2° |
| `H0-HP0-HPA` | L834: `ANGLe H0 HP0 HPa 167.184 96` | L2773: `ANGLe HPa HP0 H0 23.883 98` | 2° |
| `H0-HPA-HP5` | L846: `ANGLe H0 HPa HP5 167.184 96` | L2433: `ANGLe HP5 HPa H0 23.883 98` | 2° |
| `H0-HPA-HP0` | L847: `ANGLe H0 HPa HP0 167.184 96` | L2616: `ANGLe HP0 HPa H0 23.883 98` | 2° |
| `H0-HPA-HPA` | L848: `ANGLe H0 HPa HPa 167.184 96` | L2785: `ANGLe HPa HPa H0 23.883 98` | 2° |
| `H5-F4-HP5` | L859: `ANGLe H5 F4 HP5 167.184 96` | L2252: `ANGLe HP5 F4 H5 23.883 98` | 2° |
| `H5-F4-HP0` | L860: `ANGLe H5 F4 HP0 167.184 96` | L2448: `ANGLe HP0 F4 H5 23.883 98` | 2° |
| `H5-F4-HPA` | L861: `ANGLe H5 F4 HPa 167.184 96` | L2630: `ANGLe HPa F4 H5 23.883 98` | 2° |
| `H5-F5-HP5` | L872: `ANGLe H5 F5 HP5 167.184 96` | L2266: `ANGLe HP5 F5 H5 23.883 98` | 2° |
| `H5-F5-HP0` | L873: `ANGLe H5 F5 HP0 167.184 96` | L2461: `ANGLe HP0 F5 H5 23.883 98` | 2° |
| `H5-F5-HPA` | L874: `ANGLe H5 F5 HPa 167.184 96` | L2642: `ANGLe HPa F5 H5 23.883 98` | 2° |
| `H5-H0-HP5` | L885: `ANGLe H5 H0 HP5 167.184 96` | L2280: `ANGLe HP5 H0 H5 23.883 98` | 2° |
| `H5-H0-HP0` | L886: `ANGLe H5 H0 HP0 167.184 96` | L2474: `ANGLe HP0 H0 H5 23.883 98` | 2° |
| `H5-H0-HPA` | L887: `ANGLe H5 H0 HPa 167.184 96` | L2654: `ANGLe HPa H0 H5 23.883 98` | 2° |
| `H5-H5-HP5` | L898: `ANGLe H5 H5 HP5 167.184 96` | L2294: `ANGLe HP5 H5 H5 23.883 98` | 2° |
| `H5-H5-HP0` | L899: `ANGLe H5 H5 HP0 167.184 96` | L2487: `ANGLe HP0 H5 H5 23.883 98` | 2° |
| `H5-H5-HPA` | L900: `ANGLe H5 H5 HPa 167.184 96` | L2666: `ANGLe HPa H5 H5 23.883 98` | 2° |
| `H5-HD-HP5` | L911: `ANGLe H5 Hd HP5 167.184 96` | L2308: `ANGLe HP5 Hd H5 23.883 98` | 2° |
| `H5-HD-HP0` | L912: `ANGLe H5 Hd HP0 167.184 96` | L2500: `ANGLe HP0 Hd H5 23.883 98` | 2° |
| `H5-HD-HPA` | L913: `ANGLe H5 Hd HPa 167.184 96` | L2678: `ANGLe HPa Hd H5 23.883 98` | 2° |
| `H5-HA-HP5` | L924: `ANGLe H5 Ha HP5 167.184 96` | L2322: `ANGLe HP5 Ha H5 23.883 98` | 2° |
| `H5-HA-HP0` | L925: `ANGLe H5 Ha HP0 167.184 96` | L2513: `ANGLe HP0 Ha H5 23.883 98` | 2° |
| `H5-HA-HPA` | L926: `ANGLe H5 Ha HPa 167.184 96` | L2690: `ANGLe HPa Ha H5 23.883 98` | 2° |
| `H5-HDA-HP5` | L937: `ANGLe H5 Hda HP5 167.184 96` | L2336: `ANGLe HP5 Hda H5 23.883 98` | 2° |
| `H5-HDA-HP0` | L938: `ANGLe H5 Hda HP0 167.184 96` | L2526: `ANGLe HP0 Hda H5 23.883 98` | 2° |
| `H5-HDA-HPA` | L939: `ANGLe H5 Hda HPa 167.184 96` | L2702: `ANGLe HPa Hda H5 23.883 98` | 2° |
| `H5-BDA-HP5` | L950: `ANGLe H5 Bda HP5 167.184 96` | L2350: `ANGLe HP5 Bda H5 23.883 98` | 2° |
| `H5-BDA-HP0` | L951: `ANGLe H5 Bda HP0 167.184 96` | L2539: `ANGLe HP0 Bda H5 23.883 98` | 2° |
| `H5-BDA-HPA` | L952: `ANGLe H5 Bda HPa 167.184 96` | L2714: `ANGLe HPa Bda H5 23.883 98` | 2° |
| `H5-B0-HP5` | L963: `ANGLe H5 B0 HP5 167.184 96` | L2364: `ANGLe HP5 B0 H5 23.883 98` | 2° |
| `H5-B0-HP0` | L964: `ANGLe H5 B0 HP0 167.184 96` | L2552: `ANGLe HP0 B0 H5 23.883 98` | 2° |
| `H5-B0-HPA` | L965: `ANGLe H5 B0 HPa 167.184 96` | L2726: `ANGLe HPa B0 H5 23.883 98` | 2° |
| `H5-TDA-HP5` | L976: `ANGLe H5 Tda HP5 167.184 96` | L2378: `ANGLe HP5 Tda H5 23.883 98` | 2° |
| `H5-TDA-HP0` | L977: `ANGLe H5 Tda HP0 167.184 96` | L2565: `ANGLe HP0 Tda H5 23.883 98` | 2° |
| `H5-TDA-HPA` | L978: `ANGLe H5 Tda HPa 167.184 96` | L2738: `ANGLe HPa Tda H5 23.883 98` | 2° |
| `H5-T0-HP5` | L989: `ANGLe H5 T0 HP5 167.184 96` | L2392: `ANGLe HP5 T0 H5 23.883 98` | 2° |
| `H5-T0-HP0` | L990: `ANGLe H5 T0 HP0 167.184 96` | L2578: `ANGLe HP0 T0 H5 23.883 98` | 2° |
| `H5-T0-HPA` | L991: `ANGLe H5 T0 HPa 167.184 96` | L2750: `ANGLe HPa T0 H5 23.883 98` | 2° |
| `H5-HP5-HP5` | L1002: `ANGLe H5 HP5 HP5 167.184 96` | L2406: `ANGLe HP5 HP5 H5 23.883 98` | 2° |
| `H5-HP5-HP0` | L1003: `ANGLe H5 HP5 HP0 167.184 96` | L2591: `ANGLe HP0 HP5 H5 23.883 98` | 2° |
| `H5-HP5-HPA` | L1004: `ANGLe H5 HP5 HPa 167.184 96` | L2762: `ANGLe HPa HP5 H5 23.883 98` | 2° |
| `H5-HP0-HP5` | L1015: `ANGLe H5 HP0 HP5 167.184 96` | L2420: `ANGLe HP5 HP0 H5 23.883 98` | 2° |
| `H5-HP0-HP0` | L1016: `ANGLe H5 HP0 HP0 167.184 96` | L2604: `ANGLe HP0 HP0 H5 23.883 98` | 2° |
| `H5-HP0-HPA` | L1017: `ANGLe H5 HP0 HPa 167.184 96` | L2774: `ANGLe HPa HP0 H5 23.883 98` | 2° |
| `H5-HPA-HP5` | L1028: `ANGLe H5 HPa HP5 167.184 96` | L2434: `ANGLe HP5 HPa H5 23.883 98` | 2° |
| `H5-HPA-HP0` | L1029: `ANGLe H5 HPa HP0 167.184 96` | L2617: `ANGLe HP0 HPa H5 23.883 98` | 2° |
| `H5-HPA-HPA` | L1030: `ANGLe H5 HPa HPa 167.184 96` | L2786: `ANGLe HPa HPa H5 23.883 98` | 2° |
| `HD-F4-HP5` | L1040: `ANGLe Hd F4 HP5 167.184 96` | L2253: `ANGLe HP5 F4 Hd 23.883 98` | 2° |
| `HD-F4-HP0` | L1041: `ANGLe Hd F4 HP0 167.184 96` | L2449: `ANGLe HP0 F4 Hd 23.883 98` | 2° |
| `HD-F4-HPA` | L1042: `ANGLe Hd F4 HPa 167.184 96` | L2631: `ANGLe HPa F4 Hd 23.883 98` | 2° |
| `HD-F5-HP5` | L1052: `ANGLe Hd F5 HP5 167.184 96` | L2267: `ANGLe HP5 F5 Hd 23.883 98` | 2° |
| `HD-F5-HP0` | L1053: `ANGLe Hd F5 HP0 167.184 96` | L2462: `ANGLe HP0 F5 Hd 23.883 98` | 2° |
| `HD-F5-HPA` | L1054: `ANGLe Hd F5 HPa 167.184 96` | L2643: `ANGLe HPa F5 Hd 23.883 98` | 2° |
| `HD-H0-HP5` | L1064: `ANGLe Hd H0 HP5 167.184 96` | L2281: `ANGLe HP5 H0 Hd 23.883 98` | 2° |
| `HD-H0-HP0` | L1065: `ANGLe Hd H0 HP0 167.184 96` | L2475: `ANGLe HP0 H0 Hd 23.883 98` | 2° |
| `HD-H0-HPA` | L1066: `ANGLe Hd H0 HPa 167.184 96` | L2655: `ANGLe HPa H0 Hd 23.883 98` | 2° |
| `HD-H5-HP5` | L1076: `ANGLe Hd H5 HP5 167.184 96` | L2295: `ANGLe HP5 H5 Hd 23.883 98` | 2° |
| `HD-H5-HP0` | L1077: `ANGLe Hd H5 HP0 167.184 96` | L2488: `ANGLe HP0 H5 Hd 23.883 98` | 2° |
| `HD-H5-HPA` | L1078: `ANGLe Hd H5 HPa 167.184 96` | L2667: `ANGLe HPa H5 Hd 23.883 98` | 2° |
| `HD-HD-HP5` | L1088: `ANGLe Hd Hd HP5 167.184 96` | L2309: `ANGLe HP5 Hd Hd 23.883 98` | 2° |
| `HD-HD-HP0` | L1089: `ANGLe Hd Hd HP0 167.184 96` | L2501: `ANGLe HP0 Hd Hd 23.883 98` | 2° |
| `HD-HD-HPA` | L1090: `ANGLe Hd Hd HPa 167.184 96` | L2679: `ANGLe HPa Hd Hd 23.883 98` | 2° |
| `HD-HA-HP5` | L1100: `ANGLe Hd Ha HP5 167.184 96` | L2323: `ANGLe HP5 Ha Hd 23.883 98` | 2° |
| `HD-HA-HP0` | L1101: `ANGLe Hd Ha HP0 167.184 96` | L2514: `ANGLe HP0 Ha Hd 23.883 98` | 2° |
| `HD-HA-HPA` | L1102: `ANGLe Hd Ha HPa 167.184 96` | L2691: `ANGLe HPa Ha Hd 23.883 98` | 2° |
| `HD-HDA-HP5` | L1112: `ANGLe Hd Hda HP5 167.184 96` | L2337: `ANGLe HP5 Hda Hd 23.883 98` | 2° |
| `HD-HDA-HP0` | L1113: `ANGLe Hd Hda HP0 167.184 96` | L2527: `ANGLe HP0 Hda Hd 23.883 98` | 2° |
| `HD-HDA-HPA` | L1114: `ANGLe Hd Hda HPa 167.184 96` | L2703: `ANGLe HPa Hda Hd 23.883 98` | 2° |
| `HD-BDA-HP5` | L1124: `ANGLe Hd Bda HP5 167.184 96` | L2351: `ANGLe HP5 Bda Hd 23.883 98` | 2° |
| `HD-BDA-HP0` | L1125: `ANGLe Hd Bda HP0 167.184 96` | L2540: `ANGLe HP0 Bda Hd 23.883 98` | 2° |
| `HD-BDA-HPA` | L1126: `ANGLe Hd Bda HPa 167.184 96` | L2715: `ANGLe HPa Bda Hd 23.883 98` | 2° |
| `HD-B0-HP5` | L1136: `ANGLe Hd B0 HP5 167.184 96` | L2365: `ANGLe HP5 B0 Hd 23.883 98` | 2° |
| `HD-B0-HP0` | L1137: `ANGLe Hd B0 HP0 167.184 96` | L2553: `ANGLe HP0 B0 Hd 23.883 98` | 2° |
| `HD-B0-HPA` | L1138: `ANGLe Hd B0 HPa 167.184 96` | L2727: `ANGLe HPa B0 Hd 23.883 98` | 2° |
| `HD-TDA-HP5` | L1148: `ANGLe Hd Tda HP5 167.184 96` | L2379: `ANGLe HP5 Tda Hd 23.883 98` | 2° |
| `HD-TDA-HP0` | L1149: `ANGLe Hd Tda HP0 167.184 96` | L2566: `ANGLe HP0 Tda Hd 23.883 98` | 2° |
| `HD-TDA-HPA` | L1150: `ANGLe Hd Tda HPa 167.184 96` | L2739: `ANGLe HPa Tda Hd 23.883 98` | 2° |
| `HD-T0-HP5` | L1160: `ANGLe Hd T0 HP5 167.184 96` | L2393: `ANGLe HP5 T0 Hd 23.883 98` | 2° |
| `HD-T0-HP0` | L1161: `ANGLe Hd T0 HP0 167.184 96` | L2579: `ANGLe HP0 T0 Hd 23.883 98` | 2° |
| `HD-T0-HPA` | L1162: `ANGLe Hd T0 HPa 167.184 96` | L2751: `ANGLe HPa T0 Hd 23.883 98` | 2° |
| `HD-HP5-HP5` | L1172: `ANGLe Hd HP5 HP5 167.184 96` | L2407: `ANGLe HP5 HP5 Hd 23.883 98` | 2° |
| `HD-HP5-HP0` | L1173: `ANGLe Hd HP5 HP0 167.184 96` | L2592: `ANGLe HP0 HP5 Hd 23.883 98` | 2° |
| `HD-HP5-HPA` | L1174: `ANGLe Hd HP5 HPa 167.184 96` | L2763: `ANGLe HPa HP5 Hd 23.883 98` | 2° |
| `HD-HP0-HP5` | L1184: `ANGLe Hd HP0 HP5 167.184 96` | L2421: `ANGLe HP5 HP0 Hd 23.883 98` | 2° |
| `HD-HP0-HP0` | L1185: `ANGLe Hd HP0 HP0 167.184 96` | L2605: `ANGLe HP0 HP0 Hd 23.883 98` | 2° |
| `HD-HP0-HPA` | L1186: `ANGLe Hd HP0 HPa 167.184 96` | L2775: `ANGLe HPa HP0 Hd 23.883 98` | 2° |
| `HD-HPA-HP5` | L1196: `ANGLe Hd HPa HP5 167.184 96` | L2435: `ANGLe HP5 HPa Hd 23.883 98` | 2° |
| `HD-HPA-HP0` | L1197: `ANGLe Hd HPa HP0 167.184 96` | L2618: `ANGLe HP0 HPa Hd 23.883 98` | 2° |
| `HD-HPA-HPA` | L1198: `ANGLe Hd HPa HPa 167.184 96` | L2787: `ANGLe HPa HPa Hd 23.883 98` | 2° |
| `HA-F4-HP5` | L1207: `ANGLe Ha F4 HP5 167.184 96` | L2254: `ANGLe HP5 F4 Ha 23.883 98` | 2° |
| `HA-F4-HP0` | L1208: `ANGLe Ha F4 HP0 167.184 96` | L2450: `ANGLe HP0 F4 Ha 23.883 98` | 2° |
| `HA-F4-HPA` | L1209: `ANGLe Ha F4 HPa 167.184 96` | L2632: `ANGLe HPa F4 Ha 23.883 98` | 2° |
| `HA-F5-HP5` | L1218: `ANGLe Ha F5 HP5 167.184 96` | L2268: `ANGLe HP5 F5 Ha 23.883 98` | 2° |
| `HA-F5-HP0` | L1219: `ANGLe Ha F5 HP0 167.184 96` | L2463: `ANGLe HP0 F5 Ha 23.883 98` | 2° |
| `HA-F5-HPA` | L1220: `ANGLe Ha F5 HPa 167.184 96` | L2644: `ANGLe HPa F5 Ha 23.883 98` | 2° |
| `HA-H0-HP5` | L1229: `ANGLe Ha H0 HP5 167.184 96` | L2282: `ANGLe HP5 H0 Ha 23.883 98` | 2° |
| `HA-H0-HP0` | L1230: `ANGLe Ha H0 HP0 167.184 96` | L2476: `ANGLe HP0 H0 Ha 23.883 98` | 2° |
| `HA-H0-HPA` | L1231: `ANGLe Ha H0 HPa 167.184 96` | L2656: `ANGLe HPa H0 Ha 23.883 98` | 2° |
| `HA-H5-HP5` | L1240: `ANGLe Ha H5 HP5 167.184 96` | L2296: `ANGLe HP5 H5 Ha 23.883 98` | 2° |
| `HA-H5-HP0` | L1241: `ANGLe Ha H5 HP0 167.184 96` | L2489: `ANGLe HP0 H5 Ha 23.883 98` | 2° |
| `HA-H5-HPA` | L1242: `ANGLe Ha H5 HPa 167.184 96` | L2668: `ANGLe HPa H5 Ha 23.883 98` | 2° |
| `HA-HD-HP5` | L1251: `ANGLe Ha Hd HP5 167.184 96` | L2310: `ANGLe HP5 Hd Ha 23.883 98` | 2° |
| `HA-HD-HP0` | L1252: `ANGLe Ha Hd HP0 167.184 96` | L2502: `ANGLe HP0 Hd Ha 23.883 98` | 2° |
| `HA-HD-HPA` | L1253: `ANGLe Ha Hd HPa 167.184 96` | L2680: `ANGLe HPa Hd Ha 23.883 98` | 2° |
| `HA-HA-HP5` | L1262: `ANGLe Ha Ha HP5 167.184 96` | L2324: `ANGLe HP5 Ha Ha 23.883 98` | 2° |
| `HA-HA-HP0` | L1263: `ANGLe Ha Ha HP0 167.184 96` | L2515: `ANGLe HP0 Ha Ha 23.883 98` | 2° |
| `HA-HA-HPA` | L1264: `ANGLe Ha Ha HPa 167.184 96` | L2692: `ANGLe HPa Ha Ha 23.883 98` | 2° |
| `HA-HDA-HP5` | L1273: `ANGLe Ha Hda HP5 167.184 96` | L2338: `ANGLe HP5 Hda Ha 23.883 98` | 2° |
| `HA-HDA-HP0` | L1274: `ANGLe Ha Hda HP0 167.184 96` | L2528: `ANGLe HP0 Hda Ha 23.883 98` | 2° |
| `HA-HDA-HPA` | L1275: `ANGLe Ha Hda HPa 167.184 96` | L2704: `ANGLe HPa Hda Ha 23.883 98` | 2° |
| `HA-BDA-HP5` | L1284: `ANGLe Ha Bda HP5 167.184 96` | L2352: `ANGLe HP5 Bda Ha 23.883 98` | 2° |
| `HA-BDA-HP0` | L1285: `ANGLe Ha Bda HP0 167.184 96` | L2541: `ANGLe HP0 Bda Ha 23.883 98` | 2° |
| `HA-BDA-HPA` | L1286: `ANGLe Ha Bda HPa 167.184 96` | L2716: `ANGLe HPa Bda Ha 23.883 98` | 2° |
| `HA-B0-HP5` | L1295: `ANGLe Ha B0 HP5 167.184 96` | L2366: `ANGLe HP5 B0 Ha 23.883 98` | 2° |
| `HA-B0-HP0` | L1296: `ANGLe Ha B0 HP0 167.184 96` | L2554: `ANGLe HP0 B0 Ha 23.883 98` | 2° |
| `HA-B0-HPA` | L1297: `ANGLe Ha B0 HPa 167.184 96` | L2728: `ANGLe HPa B0 Ha 23.883 98` | 2° |
| `HA-TDA-HP5` | L1306: `ANGLe Ha Tda HP5 167.184 96` | L2380: `ANGLe HP5 Tda Ha 23.883 98` | 2° |
| `HA-TDA-HP0` | L1307: `ANGLe Ha Tda HP0 167.184 96` | L2567: `ANGLe HP0 Tda Ha 23.883 98` | 2° |
| `HA-TDA-HPA` | L1308: `ANGLe Ha Tda HPa 167.184 96` | L2740: `ANGLe HPa Tda Ha 23.883 98` | 2° |
| `HA-T0-HP5` | L1317: `ANGLe Ha T0 HP5 167.184 96` | L2394: `ANGLe HP5 T0 Ha 23.883 98` | 2° |
| `HA-T0-HP0` | L1318: `ANGLe Ha T0 HP0 167.184 96` | L2580: `ANGLe HP0 T0 Ha 23.883 98` | 2° |
| `HA-T0-HPA` | L1319: `ANGLe Ha T0 HPa 167.184 96` | L2752: `ANGLe HPa T0 Ha 23.883 98` | 2° |
| `HA-HP5-HP5` | L1328: `ANGLe Ha HP5 HP5 167.184 96` | L2408: `ANGLe HP5 HP5 Ha 23.883 98` | 2° |
| `HA-HP5-HP0` | L1329: `ANGLe Ha HP5 HP0 167.184 96` | L2593: `ANGLe HP0 HP5 Ha 23.883 98` | 2° |
| `HA-HP5-HPA` | L1330: `ANGLe Ha HP5 HPa 167.184 96` | L2764: `ANGLe HPa HP5 Ha 23.883 98` | 2° |
| `HA-HP0-HP5` | L1339: `ANGLe Ha HP0 HP5 167.184 96` | L2422: `ANGLe HP5 HP0 Ha 23.883 98` | 2° |
| `HA-HP0-HP0` | L1340: `ANGLe Ha HP0 HP0 167.184 96` | L2606: `ANGLe HP0 HP0 Ha 23.883 98` | 2° |
| `HA-HP0-HPA` | L1341: `ANGLe Ha HP0 HPa 167.184 96` | L2776: `ANGLe HPa HP0 Ha 23.883 98` | 2° |
| `HA-HPA-HP5` | L1350: `ANGLe Ha HPa HP5 167.184 96` | L2436: `ANGLe HP5 HPa Ha 23.883 98` | 2° |
| `HA-HPA-HP0` | L1351: `ANGLe Ha HPa HP0 167.184 96` | L2619: `ANGLe HP0 HPa Ha 23.883 98` | 2° |
| `HA-HPA-HPA` | L1352: `ANGLe Ha HPa HPa 167.184 96` | L2788: `ANGLe HPa HPa Ha 23.883 98` | 2° |
| `HDA-F4-HP5` | L1360: `ANGLe Hda F4 HP5 167.184 96` | L2255: `ANGLe HP5 F4 Hda 23.883 98` | 2° |
| `HDA-F4-HP0` | L1361: `ANGLe Hda F4 HP0 167.184 96` | L2451: `ANGLe HP0 F4 Hda 23.883 98` | 2° |
| `HDA-F4-HPA` | L1362: `ANGLe Hda F4 HPa 167.184 96` | L2633: `ANGLe HPa F4 Hda 23.883 98` | 2° |
| `HDA-F5-HP5` | L1370: `ANGLe Hda F5 HP5 167.184 96` | L2269: `ANGLe HP5 F5 Hda 23.883 98` | 2° |
| `HDA-F5-HP0` | L1371: `ANGLe Hda F5 HP0 167.184 96` | L2464: `ANGLe HP0 F5 Hda 23.883 98` | 2° |
| `HDA-F5-HPA` | L1372: `ANGLe Hda F5 HPa 167.184 96` | L2645: `ANGLe HPa F5 Hda 23.883 98` | 2° |
| `HDA-H0-HP5` | L1380: `ANGLe Hda H0 HP5 167.184 96` | L2283: `ANGLe HP5 H0 Hda 23.883 98` | 2° |
| `HDA-H0-HP0` | L1381: `ANGLe Hda H0 HP0 167.184 96` | L2477: `ANGLe HP0 H0 Hda 23.883 98` | 2° |
| `HDA-H0-HPA` | L1382: `ANGLe Hda H0 HPa 167.184 96` | L2657: `ANGLe HPa H0 Hda 23.883 98` | 2° |
| `HDA-H5-HP5` | L1390: `ANGLe Hda H5 HP5 167.184 96` | L2297: `ANGLe HP5 H5 Hda 23.883 98` | 2° |
| `HDA-H5-HP0` | L1391: `ANGLe Hda H5 HP0 167.184 96` | L2490: `ANGLe HP0 H5 Hda 23.883 98` | 2° |
| `HDA-H5-HPA` | L1392: `ANGLe Hda H5 HPa 167.184 96` | L2669: `ANGLe HPa H5 Hda 23.883 98` | 2° |
| `HDA-HD-HP5` | L1400: `ANGLe Hda Hd HP5 167.184 96` | L2311: `ANGLe HP5 Hd Hda 23.883 98` | 2° |
| `HDA-HD-HP0` | L1401: `ANGLe Hda Hd HP0 167.184 96` | L2503: `ANGLe HP0 Hd Hda 23.883 98` | 2° |
| `HDA-HD-HPA` | L1402: `ANGLe Hda Hd HPa 167.184 96` | L2681: `ANGLe HPa Hd Hda 23.883 98` | 2° |
| `HDA-HA-HP5` | L1410: `ANGLe Hda Ha HP5 167.184 96` | L2325: `ANGLe HP5 Ha Hda 23.883 98` | 2° |
| `HDA-HA-HP0` | L1411: `ANGLe Hda Ha HP0 167.184 96` | L2516: `ANGLe HP0 Ha Hda 23.883 98` | 2° |
| `HDA-HA-HPA` | L1412: `ANGLe Hda Ha HPa 167.184 96` | L2693: `ANGLe HPa Ha Hda 23.883 98` | 2° |
| `HDA-HDA-HP5` | L1420: `ANGLe Hda Hda HP5 167.184 96` | L2339: `ANGLe HP5 Hda Hda 23.883 98` | 2° |
| `HDA-HDA-HP0` | L1421: `ANGLe Hda Hda HP0 167.184 96` | L2529: `ANGLe HP0 Hda Hda 23.883 98` | 2° |
| `HDA-HDA-HPA` | L1422: `ANGLe Hda Hda HPa 167.184 96` | L2705: `ANGLe HPa Hda Hda 23.883 98` | 2° |
| `HDA-BDA-HP5` | L1430: `ANGLe Hda Bda HP5 167.184 96` | L2353: `ANGLe HP5 Bda Hda 23.883 98` | 2° |
| `HDA-BDA-HP0` | L1431: `ANGLe Hda Bda HP0 167.184 96` | L2542: `ANGLe HP0 Bda Hda 23.883 98` | 2° |
| `HDA-BDA-HPA` | L1432: `ANGLe Hda Bda HPa 167.184 96` | L2717: `ANGLe HPa Bda Hda 23.883 98` | 2° |
| `HDA-B0-HP5` | L1440: `ANGLe Hda B0 HP5 167.184 96` | L2367: `ANGLe HP5 B0 Hda 23.883 98` | 2° |
| `HDA-B0-HP0` | L1441: `ANGLe Hda B0 HP0 167.184 96` | L2555: `ANGLe HP0 B0 Hda 23.883 98` | 2° |
| `HDA-B0-HPA` | L1442: `ANGLe Hda B0 HPa 167.184 96` | L2729: `ANGLe HPa B0 Hda 23.883 98` | 2° |
| `HDA-TDA-HP5` | L1450: `ANGLe Hda Tda HP5 167.184 96` | L2381: `ANGLe HP5 Tda Hda 23.883 98` | 2° |
| `HDA-TDA-HP0` | L1451: `ANGLe Hda Tda HP0 167.184 96` | L2568: `ANGLe HP0 Tda Hda 23.883 98` | 2° |
| `HDA-TDA-HPA` | L1452: `ANGLe Hda Tda HPa 167.184 96` | L2741: `ANGLe HPa Tda Hda 23.883 98` | 2° |
| `HDA-T0-HP5` | L1460: `ANGLe Hda T0 HP5 167.184 96` | L2395: `ANGLe HP5 T0 Hda 23.883 98` | 2° |
| `HDA-T0-HP0` | L1461: `ANGLe Hda T0 HP0 167.184 96` | L2581: `ANGLe HP0 T0 Hda 23.883 98` | 2° |
| `HDA-T0-HPA` | L1462: `ANGLe Hda T0 HPa 167.184 96` | L2753: `ANGLe HPa T0 Hda 23.883 98` | 2° |
| `HDA-HP5-HP5` | L1470: `ANGLe Hda HP5 HP5 167.184 96` | L2409: `ANGLe HP5 HP5 Hda 23.883 98` | 2° |
| `HDA-HP5-HP0` | L1471: `ANGLe Hda HP5 HP0 167.184 96` | L2594: `ANGLe HP0 HP5 Hda 23.883 98` | 2° |
| `HDA-HP5-HPA` | L1472: `ANGLe Hda HP5 HPa 167.184 96` | L2765: `ANGLe HPa HP5 Hda 23.883 98` | 2° |
| `HDA-HP0-HP5` | L1480: `ANGLe Hda HP0 HP5 167.184 96` | L2423: `ANGLe HP5 HP0 Hda 23.883 98` | 2° |
| `HDA-HP0-HP0` | L1481: `ANGLe Hda HP0 HP0 167.184 96` | L2607: `ANGLe HP0 HP0 Hda 23.883 98` | 2° |
| `HDA-HP0-HPA` | L1482: `ANGLe Hda HP0 HPa 167.184 96` | L2777: `ANGLe HPa HP0 Hda 23.883 98` | 2° |
| `HDA-HPA-HP5` | L1490: `ANGLe Hda HPa HP5 167.184 96` | L2437: `ANGLe HP5 HPa Hda 23.883 98` | 2° |
| `HDA-HPA-HP0` | L1491: `ANGLe Hda HPa HP0 167.184 96` | L2620: `ANGLe HP0 HPa Hda 23.883 98` | 2° |
| `HDA-HPA-HPA` | L1492: `ANGLe Hda HPa HPa 167.184 96` | L2789: `ANGLe HPa HPa Hda 23.883 98` | 2° |
| `HP5-F4-TDA` | L1882: `ANGLe Tda F4 HP5 5.971 100` | L2258: `ANGLe HP5 F4 Tda 23.883 98` | 2° |
| `HP0-F4-TDA` | L1883: `ANGLe Tda F4 HP0 5.971 100` | L2454: `ANGLe HP0 F4 Tda 23.883 98` | 2° |
| `HPA-F4-TDA` | L1884: `ANGLe Tda F4 HPa 5.971 100` | L2636: `ANGLe HPa F4 Tda 23.883 98` | 2° |
| `HP5-F5-TDA` | L1896: `ANGLe Tda F5 HP5 5.971 100` | L2272: `ANGLe HP5 F5 Tda 23.883 98` | 2° |
| `HP0-F5-TDA` | L1897: `ANGLe Tda F5 HP0 5.971 100` | L2467: `ANGLe HP0 F5 Tda 23.883 98` | 2° |
| `HPA-F5-TDA` | L1898: `ANGLe Tda F5 HPa 5.971 100` | L2648: `ANGLe HPa F5 Tda 23.883 98` | 2° |
| `HP5-H0-TDA` | L1910: `ANGLe Tda H0 HP5 5.971 100` | L2286: `ANGLe HP5 H0 Tda 23.883 98` | 2° |
| `HP0-H0-TDA` | L1911: `ANGLe Tda H0 HP0 5.971 100` | L2480: `ANGLe HP0 H0 Tda 23.883 98` | 2° |
| `HPA-H0-TDA` | L1912: `ANGLe Tda H0 HPa 5.971 100` | L2660: `ANGLe HPa H0 Tda 23.883 98` | 2° |
| `HP5-H5-TDA` | L1924: `ANGLe Tda H5 HP5 5.971 100` | L2300: `ANGLe HP5 H5 Tda 23.883 98` | 2° |
| `HP0-H5-TDA` | L1925: `ANGLe Tda H5 HP0 5.971 100` | L2493: `ANGLe HP0 H5 Tda 23.883 98` | 2° |
| `HPA-H5-TDA` | L1926: `ANGLe Tda H5 HPa 5.971 100` | L2672: `ANGLe HPa H5 Tda 23.883 98` | 2° |
| `HP5-HD-TDA` | L1938: `ANGLe Tda Hd HP5 5.971 100` | L2314: `ANGLe HP5 Hd Tda 23.883 98` | 2° |
| `HP0-HD-TDA` | L1939: `ANGLe Tda Hd HP0 5.971 100` | L2506: `ANGLe HP0 Hd Tda 23.883 98` | 2° |
| `HPA-HD-TDA` | L1940: `ANGLe Tda Hd HPa 5.971 100` | L2684: `ANGLe HPa Hd Tda 23.883 98` | 2° |
| `HP5-HA-TDA` | L1952: `ANGLe Tda Ha HP5 5.971 100` | L2328: `ANGLe HP5 Ha Tda 23.883 98` | 2° |
| `HP0-HA-TDA` | L1953: `ANGLe Tda Ha HP0 5.971 100` | L2519: `ANGLe HP0 Ha Tda 23.883 98` | 2° |
| `HPA-HA-TDA` | L1954: `ANGLe Tda Ha HPa 5.971 100` | L2696: `ANGLe HPa Ha Tda 23.883 98` | 2° |
| `HP5-HDA-TDA` | L1966: `ANGLe Tda Hda HP5 5.971 100` | L2342: `ANGLe HP5 Hda Tda 23.883 98` | 2° |
| `HP0-HDA-TDA` | L1967: `ANGLe Tda Hda HP0 5.971 100` | L2532: `ANGLe HP0 Hda Tda 23.883 98` | 2° |
| `HPA-HDA-TDA` | L1968: `ANGLe Tda Hda HPa 5.971 100` | L2708: `ANGLe HPa Hda Tda 23.883 98` | 2° |
| `HP5-BDA-TDA` | L1980: `ANGLe Tda Bda HP5 5.971 100` | L2356: `ANGLe HP5 Bda Tda 23.883 98` | 2° |
| `HP0-BDA-TDA` | L1981: `ANGLe Tda Bda HP0 5.971 100` | L2545: `ANGLe HP0 Bda Tda 23.883 98` | 2° |
| `HPA-BDA-TDA` | L1982: `ANGLe Tda Bda HPa 5.971 100` | L2720: `ANGLe HPa Bda Tda 23.883 98` | 2° |
| `HP5-B0-TDA` | L1994: `ANGLe Tda B0 HP5 5.971 100` | L2370: `ANGLe HP5 B0 Tda 23.883 98` | 2° |
| `HP0-B0-TDA` | L1995: `ANGLe Tda B0 HP0 5.971 100` | L2558: `ANGLe HP0 B0 Tda 23.883 98` | 2° |
| `HPA-B0-TDA` | L1996: `ANGLe Tda B0 HPa 5.971 100` | L2732: `ANGLe HPa B0 Tda 23.883 98` | 2° |
| `HP5-TDA-TDA` | L2008: `ANGLe Tda Tda HP5 5.971 100` | L2384: `ANGLe HP5 Tda Tda 23.883 98` | 2° |
| `HP0-TDA-TDA` | L2009: `ANGLe Tda Tda HP0 5.971 100` | L2571: `ANGLe HP0 Tda Tda 23.883 98` | 2° |
| `HPA-TDA-TDA` | L2010: `ANGLe Tda Tda HPa 5.971 100` | L2744: `ANGLe HPa Tda Tda 23.883 98` | 2° |
| `HP5-T0-TDA` | L2022: `ANGLe Tda T0 HP5 5.971 100` | L2398: `ANGLe HP5 T0 Tda 23.883 98` | 2° |
| `HP0-T0-TDA` | L2023: `ANGLe Tda T0 HP0 5.971 100` | L2584: `ANGLe HP0 T0 Tda 23.883 98` | 2° |
| `HPA-T0-TDA` | L2024: `ANGLe Tda T0 HPa 5.971 100` | L2756: `ANGLe HPa T0 Tda 23.883 98` | 2° |
| `HP5-HP5-TDA` | L2036: `ANGLe Tda HP5 HP5 5.971 100` | L2412: `ANGLe HP5 HP5 Tda 23.883 98` | 2° |
| `HP0-HP5-TDA` | L2037: `ANGLe Tda HP5 HP0 5.971 100` | L2597: `ANGLe HP0 HP5 Tda 23.883 98` | 2° |
| `HPA-HP5-TDA` | L2038: `ANGLe Tda HP5 HPa 5.971 100` | L2768: `ANGLe HPa HP5 Tda 23.883 98` | 2° |
| `HP5-HP0-TDA` | L2050: `ANGLe Tda HP0 HP5 5.971 100` | L2426: `ANGLe HP5 HP0 Tda 23.883 98` | 2° |
| `HP0-HP0-TDA` | L2051: `ANGLe Tda HP0 HP0 5.971 100` | L2610: `ANGLe HP0 HP0 Tda 23.883 98` | 2° |
| `HPA-HP0-TDA` | L2052: `ANGLe Tda HP0 HPa 5.971 100` | L2780: `ANGLe HPa HP0 Tda 23.883 98` | 2° |
| `HP5-HPA-TDA` | L2064: `ANGLe Tda HPa HP5 5.971 100` | L2440: `ANGLe HP5 HPa Tda 23.883 98` | 2° |
| `HP0-HPA-TDA` | L2065: `ANGLe Tda HPa HP0 5.971 100` | L2623: `ANGLe HP0 HPa Tda 23.883 98` | 2° |
| `HPA-HPA-TDA` | L2066: `ANGLe Tda HPa HPa 5.971 100` | L2792: `ANGLe HPa HPa Tda 23.883 98` | 2° |
| `HP5-F4-T0` | L2077: `ANGLe T0 F4 HP5 5.971 100` | L2259: `ANGLe HP5 F4 T0 23.883 98` | 2° |
| `HP0-F4-T0` | L2078: `ANGLe T0 F4 HP0 5.971 100` | L2455: `ANGLe HP0 F4 T0 23.883 98` | 2° |
| `HPA-F4-T0` | L2079: `ANGLe T0 F4 HPa 5.971 100` | L2637: `ANGLe HPa F4 T0 23.883 98` | 2° |
| `HP5-F5-T0` | L2090: `ANGLe T0 F5 HP5 5.971 100` | L2273: `ANGLe HP5 F5 T0 23.883 98` | 2° |
| `HP0-F5-T0` | L2091: `ANGLe T0 F5 HP0 5.971 100` | L2468: `ANGLe HP0 F5 T0 23.883 98` | 2° |
| `HPA-F5-T0` | L2092: `ANGLe T0 F5 HPa 5.971 100` | L2649: `ANGLe HPa F5 T0 23.883 98` | 2° |
| `HP5-H0-T0` | L2103: `ANGLe T0 H0 HP5 5.971 100` | L2287: `ANGLe HP5 H0 T0 23.883 98` | 2° |
| `HP0-H0-T0` | L2104: `ANGLe T0 H0 HP0 5.971 100` | L2481: `ANGLe HP0 H0 T0 23.883 98` | 2° |
| `HPA-H0-T0` | L2105: `ANGLe T0 H0 HPa 5.971 100` | L2661: `ANGLe HPa H0 T0 23.883 98` | 2° |
| `HP5-H5-T0` | L2116: `ANGLe T0 H5 HP5 5.971 100` | L2301: `ANGLe HP5 H5 T0 23.883 98` | 2° |
| `HP0-H5-T0` | L2117: `ANGLe T0 H5 HP0 5.971 100` | L2494: `ANGLe HP0 H5 T0 23.883 98` | 2° |
| `HPA-H5-T0` | L2118: `ANGLe T0 H5 HPa 5.971 100` | L2673: `ANGLe HPa H5 T0 23.883 98` | 2° |
| `HP5-HD-T0` | L2129: `ANGLe T0 Hd HP5 5.971 100` | L2315: `ANGLe HP5 Hd T0 23.883 98` | 2° |
| `HP0-HD-T0` | L2130: `ANGLe T0 Hd HP0 5.971 100` | L2507: `ANGLe HP0 Hd T0 23.883 98` | 2° |
| `HPA-HD-T0` | L2131: `ANGLe T0 Hd HPa 5.971 100` | L2685: `ANGLe HPa Hd T0 23.883 98` | 2° |
| `HP5-HA-T0` | L2142: `ANGLe T0 Ha HP5 5.971 100` | L2329: `ANGLe HP5 Ha T0 23.883 98` | 2° |
| `HP0-HA-T0` | L2143: `ANGLe T0 Ha HP0 5.971 100` | L2520: `ANGLe HP0 Ha T0 23.883 98` | 2° |
| `HPA-HA-T0` | L2144: `ANGLe T0 Ha HPa 5.971 100` | L2697: `ANGLe HPa Ha T0 23.883 98` | 2° |
| `HP5-HDA-T0` | L2155: `ANGLe T0 Hda HP5 5.971 100` | L2343: `ANGLe HP5 Hda T0 23.883 98` | 2° |
| `HP0-HDA-T0` | L2156: `ANGLe T0 Hda HP0 5.971 100` | L2533: `ANGLe HP0 Hda T0 23.883 98` | 2° |
| `HPA-HDA-T0` | L2157: `ANGLe T0 Hda HPa 5.971 100` | L2709: `ANGLe HPa Hda T0 23.883 98` | 2° |
| `HP5-BDA-T0` | L2168: `ANGLe T0 Bda HP5 5.971 100` | L2357: `ANGLe HP5 Bda T0 23.883 98` | 2° |
| `HP0-BDA-T0` | L2169: `ANGLe T0 Bda HP0 5.971 100` | L2546: `ANGLe HP0 Bda T0 23.883 98` | 2° |
| `HPA-BDA-T0` | L2170: `ANGLe T0 Bda HPa 5.971 100` | L2721: `ANGLe HPa Bda T0 23.883 98` | 2° |
| `HP5-B0-T0` | L2181: `ANGLe T0 B0 HP5 5.971 100` | L2371: `ANGLe HP5 B0 T0 23.883 98` | 2° |
| `HP0-B0-T0` | L2182: `ANGLe T0 B0 HP0 5.971 100` | L2559: `ANGLe HP0 B0 T0 23.883 98` | 2° |
| `HPA-B0-T0` | L2183: `ANGLe T0 B0 HPa 5.971 100` | L2733: `ANGLe HPa B0 T0 23.883 98` | 2° |
| `HP5-TDA-T0` | L2194: `ANGLe T0 Tda HP5 5.971 100` | L2385: `ANGLe HP5 Tda T0 23.883 98` | 2° |
| `HP0-TDA-T0` | L2195: `ANGLe T0 Tda HP0 5.971 100` | L2572: `ANGLe HP0 Tda T0 23.883 98` | 2° |
| `HPA-TDA-T0` | L2196: `ANGLe T0 Tda HPa 5.971 100` | L2745: `ANGLe HPa Tda T0 23.883 98` | 2° |
| `HP5-T0-T0` | L2207: `ANGLe T0 T0 HP5 5.971 100` | L2399: `ANGLe HP5 T0 T0 23.883 98` | 2° |
| `HP0-T0-T0` | L2208: `ANGLe T0 T0 HP0 5.971 100` | L2585: `ANGLe HP0 T0 T0 23.883 98` | 2° |
| `HPA-T0-T0` | L2209: `ANGLe T0 T0 HPa 5.971 100` | L2757: `ANGLe HPa T0 T0 23.883 98` | 2° |
| `HP5-HP5-T0` | L2220: `ANGLe T0 HP5 HP5 5.971 100` | L2413: `ANGLe HP5 HP5 T0 23.883 98` | 2° |
| `HP0-HP5-T0` | L2221: `ANGLe T0 HP5 HP0 5.971 100` | L2598: `ANGLe HP0 HP5 T0 23.883 98` | 2° |
| `HPA-HP5-T0` | L2222: `ANGLe T0 HP5 HPa 5.971 100` | L2769: `ANGLe HPa HP5 T0 23.883 98` | 2° |
| `HP5-HP0-T0` | L2233: `ANGLe T0 HP0 HP5 5.971 100` | L2427: `ANGLe HP5 HP0 T0 23.883 98` | 2° |
| `HP0-HP0-T0` | L2234: `ANGLe T0 HP0 HP0 5.971 100` | L2611: `ANGLe HP0 HP0 T0 23.883 98` | 2° |
| `HPA-HP0-T0` | L2235: `ANGLe T0 HP0 HPa 5.971 100` | L2781: `ANGLe HPa HP0 T0 23.883 98` | 2° |
| `HP5-HPA-T0` | L2246: `ANGLe T0 HPa HP5 5.971 100` | L2441: `ANGLe HP5 HPa T0 23.883 98` | 2° |
| `HP0-HPA-T0` | L2247: `ANGLe T0 HPa HP0 5.971 100` | L2624: `ANGLe HP0 HPa T0 23.883 98` | 2° |
| `HPA-HPA-T0` | L2248: `ANGLe T0 HPa HPa 5.971 100` | L2793: `ANGLe HPa HPa T0 23.883 98` | 2° |

**Total: 294 conflicting pairs collapsed (first instance removed, second kept).**

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `85248c9c290d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.