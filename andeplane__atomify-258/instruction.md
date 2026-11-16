# Issue

**Title:** fix: bump rehype-katex from 6.0.3 to 7.0.1

## Description

## Summary

Upgrades `rehype-katex` from 6.0.3 to 7.0.1 and resolves TypeScript type incompatibilities by aligning dependency versions in the unified ecosystem.

## Changes

- **rehype-katex**: 6.0.3 → 7.0.1
- **react-markdown**: 8.0.3 → 10.1.0 (to match vfile@6 versions)
- **remark-math**: 5.1.1 → 6.0.0 (to align unified@11 versions)
- **rehype-external-links**: Added to restore `linkTarget="_blank"` functionality removed in react-markdown v10

## Problem

The upgrade initially failed with TypeScript errors due to version mismatches:
- `react-markdown@10.1.0` uses `unified@11`
- `remark-math@5.1.1` uses `unified@10`
- This caused type incompatibilities between the plugins

## Solution

Upgraded `remark-math` to v6.0.0 which uses `unified@11`, aligning all packages in the unified ecosystem.

## Testing

- ✅ TypeScript type checking passes
- ✅ Build succeeds
- ✅ All dependencies properly aligned

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4c74a54b0b6f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.