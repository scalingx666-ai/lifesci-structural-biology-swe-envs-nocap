# Issue

**Title:** raise error on mixed TOML/CFG module headers

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
<!-- Please explain what you did in this PR -->

haddock config files accept two header styles: the custom `.cfg` format with repeated bare headers (ex: `[caprieval]` written several times) and pure TOML with quoted numbered headers (`['caprieval.1']`). 

when the two were mixed, the parser silently ate the extra definitions as sub-tables instead of creating workflow steps, so runs were quietly incomplete with no error - meaning the modules would be dropped without any warning/error.

this PR updates the parser `gear/config.py` to detect ambiguous mixes of `.cfg` and `.toml` and raise a clear `ConfigFormatError`:

| Config input | Result |
|---|---|
| `[caprieval]` xN (`cfg` style) | ✅ N steps |
| `['caprieval.1']`, `['caprieval.2']` (TOML style) | ✅ 2 steps |
| `[caprieval.1]` (unquoted numeric) | ❌ raises `ConfigFormatError` |
| `[caprieval]` + `['caprieval.1']` (bare + numbered) | ❌ raises `ConfigFormatError` |
| `['caprieval']` + `['caprieval.1']` (bare + numbered, quoted) | ❌ raises `ConfigFormatError` |


IMPORTANT: Because the parser is also used to reload internally generated `params.cfg` files  which for some reason are a mix of cfg-toml, I added a `strict` flag the new checks. The reload happens in (`caprieval/capri.py, clis/re/clustrmsd.py`, `clis/re/clustfcc.py`, and the `.cfg` reader in `modules/__init__.py`) these have been updated with `strict=False` to make the change less disruptive.


## How was this tested?
<!-- Explain how the changes were verified -->

Added unit tests in `tests/test_gear_config.py` covering the cases mentioned in the table above

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. -->

used `qwen3-coder-next:q8_0` to locate the parsing logic, trace the cfg-toml mixed `params.cfg` file reload paths and to draft the tests. Code was written manually and AI edits were checked.

## Checklist

- [x] Tests cover the new and/or changed code
- ~[ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)~
- ~[ ] `CHANGELOG.md` updated for user-facing changes~

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

#1616, 

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work -->

maybe consider whether the user-manual should document the "pick one header style" rule, the examples are using the custom `.cfg` format and it's not properly documented anywhere - I'd recommend default to `.toml` in the future

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `503aedd4589e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.