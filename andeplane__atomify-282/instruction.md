# Issue

**Title:** fix: restore input script selection in new simulation dialog

## Description

## Problem

Users reported that after uploading files in the new simulation dialog, the input script selection dropdown was not appearing, preventing them from starting simulations.

## Root Cause

In Ant Design 5, when `beforeUpload` returns `false`, the `onChange` callback's `info.file.originFileObj` can be undefined on certain invocations. The previous code had an early return when `originFileObj` was undefined, causing files to be silently skipped and never added to React state. Files appeared in Ant Design's internal UI but weren't tracked in the component state.

## Solution

- Modified `onChange` handler to process `info.fileList` instead of relying solely on `info.file`
- Added deduplication logic with race condition protection to prevent duplicate file uploads (handles React StrictMode double-rendering)
- Added auto-selection of first `.in` file as default input script when files are uploaded

## Testing

- Verified that uploaded files now appear in the input script dropdown
- Confirmed no duplicate files are added even with concurrent onChange calls
- Verified auto-selection of .in files works correctly

Fixes issue reported by Hegoi Manzano from University of the Basque Country.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43231f9f74a5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.