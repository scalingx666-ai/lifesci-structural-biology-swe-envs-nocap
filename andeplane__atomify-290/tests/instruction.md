# Issue

**Title:** refactor: extract LAMMPS language definition from Edit.tsx

## Description

## Summary

Extracts the LAMMPS Monaco language definition from `Edit.tsx` into a separate module, significantly reducing the file size and improving maintainability.

## Changes

- **Created** `src/utils/lammpsLanguage.ts`: Contains ~1,200 LAMMPS keywords and Monaco Monarch tokenizer configuration
- **Updated** `src/containers/Edit.tsx`: Reduced from 1,458 LOC to 56 LOC (96% reduction)

## Benefits

- Clear separation of concerns: language definition is now isolated
- Improved maintainability: language keywords can be updated independently
- Better code organization: React component is now focused solely on editor rendering
- Type-safe: Proper TypeScript types for Monaco instance compatibility

## Testing

- ✅ All existing tests pass (213/213)
- ✅ TypeScript compilation successful
- ✅ No linter errors

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e1bcb2550a86`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.