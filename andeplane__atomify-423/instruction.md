# Issue

**Title:** Show an unsupported-browser notice for Safari

## Description

Safari currently cannot run Atomify's credentialless / SharedArrayBuffer simulation engine. Detect Safari/WebKit before starting the engine and show: “Safari is not supported for simulations. Use Chrome or Firefox on a desktop computer.” Examples and projects remain browsable, but simulation controls stay disabled and the engine is not downloaded.

The sidebar displays a persistent error instead of an endless loading indicator, with an accessible label and tooltip when collapsed. Also show an error when cross-origin isolation is unavailable or engine initialization rejects.

The existing isolation policy, service worker, engine implementation, and thumbnail rendering are unchanged. This PR explicitly marks Safari unsupported; it does not implement Safari compatibility or a fallback engine.

Validation:
- `npm run typecheck`
- `npm run test:run`: 460 tests passed
- `npm run build`
- `npx playwright test --config playwright.safari.config.ts`: three checks passed (three browser-inapplicable combinations skipped). WebKit shows the unsupported notice, skips the engine download, and keeps examples browsable. Chromium completes a simulation and shows an error when isolation is unavailable.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d0a46b71ff10`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.