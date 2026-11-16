# Issue

**Title:** feat: Migrate from Create React App to Vite

## Description

# Migrate from Create React App to Vite

## Overview
This PR migrates the project from Create React App (CRA) with CRACO to Vite, providing a faster and more modern development experience.

## Key Changes

### Build System
- ✅ Replaced `react-scripts` with Vite
- ✅ Removed CRACO configuration
- ✅ Updated to Vite's faster HMR (Hot Module Replacement)

### Monaco Editor
- ✅ Migrated from `react-monaco-editor` to `@monaco-editor/react`
- ✅ Updated both `Edit.tsx` and `Console.tsx` components
- ✅ Removed webpack-specific Monaco plugin

### WASM Configuration
- ✅ Configured explicit `locateFile` for Emscripten WASM loading
- ✅ WASM files served from `public/` folder (no bundling needed)
- ✅ Removed `src/wasm/lammps.wasm` (kept only `.mjs` and `.d.ts`)

### Configuration Updates
- ✅ Moved `index.html` to project root with Vite module script
- ✅ Updated `vite.config.ts` with base path `/atomify/`
- ✅ Added Vite client types to `tsconfig.json`
- ✅ Updated HMR from `module.hot` to `import.meta.hot`
- ✅ Replaced `process.env.NODE_ENV` with `import.meta.env.DEV`

### React 18
- ✅ Updated to modern `createRoot` API

### Cleanup
- ✅ Deleted `craco.config.js`
- ✅ Deleted `src/react-app-env.d.ts`
- ✅ Deleted `src/setupProxy.js` (proxy moved to vite.config)

## Package Changes

### Added
- `vite` (^5.4.11)
- `@vitejs/plugin-react` (^4.3.4)
- `@monaco-editor/react` (^4.6.0)
- `monaco-editor` (^0.50.0)

### Removed
- `react-scripts`
- `react-monaco-editor`

## Testing
- ✅ Dev server runs successfully at `http://localhost:3000/atomify/`
- ✅ WASM module loads correctly
- ✅ Monaco editors work in both Edit and Console views
- ✅ HMR works as expected

## Benefits
- 🚀 **Much faster dev server startup** (from ~30s to ~0.3s)
- 🚀 **Instant HMR** updates
- 📦 **Smaller, more optimized production builds**
- 🎯 **Modern tooling** with better ESM support
- 🛠️ **Simpler configuration** (no CRACO needed)

## Breaking Changes
None - the application functionality remains unchanged.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `49952bb30762`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.