# Issue

**Title:** Add narrow functionality when clicking species

## Description

This PR implements a new "narrow" functionality that allows users to quickly filter displayed results by clicking directly on species in the ReacNetGenerator web interface.

## What changed

**Before:** Clicking on a species only added it to the network graph visualization.

**After:** Clicking on a species now both adds it to the network graph AND automatically filters the species and reactions displays to show only results related to that species.

## Implementation details

The implementation adds two new JavaScript functions:

1. `narrowSpecies(spec)` - Adds a clicked species to all relevant dropdown selects (`#speciesselect`, `#reactionsselect`, `#reactionsabcdselect`) and triggers the filtering logic
2. `addnodeAndNarrow(spec)` - Combines the existing `addnode()` functionality with the new `narrowSpecies()` functionality

The species template was updated to call `addnodeAndNarrow()` instead of just `addnode()` when a species is clicked:

```html
<!-- Before -->
<a onclick="addnode('{{:#view.data}}');">

<!-- After -->
<a onclick="addnodeAndNarrow('{{:#view.data}}');">
```

## User experience improvements

- **Faster exploration**: Users can quickly focus on specific chemistry by clicking rather than manually searching through dropdowns
- **Intuitive workflow**: Leverages the existing click interaction in a natural way
- **Non-breaking**: All existing functionality is preserved - users can still use dropdowns as before

## Example usage

When a user clicks on a methane (CH4) species:
1. ✅ CH4 is added to the network graph (original behavior)
2. ✅ CH4 is automatically selected in all filter dropdowns (new behavior)
3. ✅ The interface updates to show only species and reactions involving CH4 (new behavior)

This provides an immediate "narrow" view focused on that specific species and its related chemistry.

The implementation includes comprehensive tests and handles edge cases like preventing duplicate selections. All existing tests continue to pass.

.

<!-- START COPILOT CODING AGENT TIPS -->
---

💡 You can make Copilot smarter by setting up custom instructions, customizing its development environment and configuring Model Context Protocol (MCP) servers. Learn more [Copilot coding agent tips](https://gh.io/copilot-coding-agent-tips) in the docs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1348619f2c34`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.