# Issue

**Title:** Fix Notebook tab blocked by COEP (jupyter iframe refused to connect)

## Description

## Problem

Since the KOKKOS build made the page cross-origin isolated (COOP/COEP via `coi-serviceworker` on GitHub Pages), the Notebook tab shows **"andeplane.github.io refused to connect"** — the JupyterLite iframe is blocked with `ERR_BLOCKED_BY_RESPONSE` / `blocked:COEP`.

A cross-origin-isolated document may only embed iframes whose responses also carry a COEP header. The Notebook iframe (`/atomify/jupyter/lab/index.html`) is controlled by **JupyterLite's own service worker**, whose scope (`jupyter/`) is more specific than the coi shim's (`/atomify/`) — so the shim never sees those requests, and JupyterLite's worker serves the iframe document without COEP headers. That's also why it works exactly once: on the very first visit JupyterLite's service worker isn't registered yet, so the coi shim handles the iframe and injects the headers; every visit after that is blocked.

## Fix

- **`scripts/patch-jupyterlite-sw.mjs`** — post-processes the built `jupyter/service-worker.js`, wrapping its single GET response path (`maybeFromCache`) so every response it serves (cache hits and network fetches, including the iframe navigation) gets `Cross-Origin-Embedder-Policy: credentialless` + `Cross-Origin-Opener-Policy: same-origin`, matching the coi shim. Fails loudly if a future JupyterLite version renames the function.
- **`deploy.yaml`** — runs the patch script after `jupyter lite build`.
- **`index.html`** — nudges an already-registered (stale, broken) JupyterLite service worker to update on page load, so existing visitors recover on their **first** visit after deploy instead of the second.
- **`.gitignore`** — ignore local `jupyter lite build` output.

## Verification

Ran the production build in headless Chrome against a static server that sets **no** headers (GitHub Pages conditions):

| Scenario | Stock SW | Patched SW |
|---|---|---|
| First visit (coi shim controls iframe) | ✅ loads | ✅ loads |
| Second visit (JupyterLite SW controls iframe) | ❌ `ERR_BLOCKED_BY_RESPONSE` | ✅ loads |
| Existing profile with stale broken SW, after deploy | — | ✅ recovers on first visit |

`crossOriginIsolated` remains `true` throughout, so the KOKKOS/SharedArrayBuffer path is unaffected. Typecheck passes.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d9f8bc377c3c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.