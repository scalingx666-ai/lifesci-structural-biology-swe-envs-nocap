# Issue

**Title:** feat: add Hugging Face Hub integration

## Description

## What this adds

Optional Hugging Face Hub support for loading AIMNet2 models. Users can pass an HF repo ID directly to \`AIMNet2Calculator\` instead of a local path or registry alias:

\`\`\`python
calc = AIMNet2Calculator("isayevlab/aimnet2-wb97m-d3")
\`\`\`

The feature is gated behind an optional dependency group:

\`\`\`
pip install "aimnet[hf]"   # adds huggingface_hub>=0.20, safetensors>=0.4
\`\`\`

### HF repo layout

\`\`\`
config.json               # model architecture YAML + metadata
ensemble_0.safetensors    # weights for member 0..3
\`\`\`

### Detection

A string matches as an HF repo ID only when it is exactly \`org/name\` (two alphanumeric segments separated by one slash). Absolute paths are not affected.

### Security

\`_validate_model_yaml\` rejects any \`class:\` entry in \`config.json\` that does not start with \`aimnet.\` before calling \`build_module()\`, preventing arbitrary code execution.

### Fallback

If \`config.json\` is absent or lacks \`model_yaml\`, the loader falls back to the existing GCS registry for compatibility with family-level uploads.

## Bugs fixed in review

**\`MODEL_REGISTRY\` import error** — \`_fetch_pt_metadata_from_registry()\` imported a non-existent symbol; the \`ImportError\` was silently swallowed causing a confusing downstream \`ValueError\`. Fixed to use \`load_model_registry()\`.

**Absolute-path false positive** — \`"/" in model\` incorrectly triggered the HF path for absolute local paths like \`/abs/path/model.pt\`. Fixed with a strict \`^[a-zA-Z0-9._-]+/[a-zA-Z0-9._-]+\$\` regex.

## Tests

5 new tests in \`tests/test_hf_hub.py\` — all pass. \`make check\` clean.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2d88996d5ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.