# Issue

**Title:** Aromatic/dashed bond order rendering #455

## Description

This PR extends the dashed bond work from #641 and #740 to handle aromatic and fractional bond orders. Bonds with order 1.5, 2.5, or type 4 (aromatic) now display as a solid+dashed pair matching standard chemical drawing conventions.

### Background

PR #641/#740 added dashed bond rendering for bond orders < 1. This PR builds on that foundation to handle the more complex case raised in #455: aromatic bonds (type 4 in SDF) and fractional orders like 1.5 need to render as a solid+dashed pair, not just a single dashed line. The tricky part is determining which side gets the dashed portion - it should face the ring interior.

### What changed

- Fractional bond orders (1.5, 2.5) and aromatic type (4) render as one solid cylinder plus one dashed cylinder. The dashed portion automatically faces the ring interior by computing a weighted centroid of neighboring atoms. Ring atoms get full weight, terminal hydrogens get 0.25 weight.

- Fine-tuned previous formula for dash creation

- Two-color bonds between different atom types (e.g. C-N in pyridine) now split correctly at the midpoint for both solid and dashed portions.

- Added solidColor and dashedColor properties to dashedBondConfig for explicit color control: 
```js
{stick: {dashedBondConfig: {dashLength: 0.1, gapLength: 0.2, solidColor: '#00F', dashedColor: '#F80'}}}
```

- Also fixed getSideBondV to handle edge cases better when finding neighbor atoms for bond offset direction.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5bc64414929f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.