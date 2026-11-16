# Issue

**Title:** CylinderSpec docs fix

## Description

Let me know if I should create an issue for this, seemed small enough to just throw into a PR

I was confused why `GLViewer.addDashedCylinder` wasn't working, then I realized I was looking at `GLShape` and the [code in glviewer.js](https://github.com/3dmol/3Dmol.js/blob/d47e7c759a55ee266845edab8a366d76102481ea/3Dmol/glviewer.js#L2195) does:

```
            if(spec.dashed)
                s.addDashedCylinder(spec);
            else
                s.addCylinder(spec);
```

Perhaps the better fix is to add a `addDashedCylinder` to `GLViewer` to avoid confusion like this, but the simpler fix is to at least get `dashed` documented. 

When documenting this I also noticed some issue with the `CurveSpec` and fixed those too.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6ceba2fd1704`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.