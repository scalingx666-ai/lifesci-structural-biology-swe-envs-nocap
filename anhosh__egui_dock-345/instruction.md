# Issue

**Title:** Accesskit labels for tabs, separators and tab bars

## Description

.

Had to resort to `ui.ctx().accesskit_node_builder(...)` at a few places because:
1. egui doesn't have `WidgetType::Tab` or similar. Opened an issue upstream: 
2. We want to allow for AccessKit actions on separators (to adjust the fractions).
3. We want to hide junctions (#338) from AccessKit, since free-moving junctions doesn't make much sense on assistive technologies like VoiceOver.

Tested with VoiceOver on macOS and egui_mcp with Claude Code. Here's a recording of me using VoiceOver on the hello example:

https://github.com/user-attachments/assets/e2502d89-811b-4d51-a62b-9ee712325b0e

There is a "collapsed on left/top" announced on separators, which seems to be an upstream AccessKit macOS adaptor issue.

## AI Disclosure

Claude Code on Fable 5 (Effort Extra) has been used to generate code and it genuinely was NOT particularly useful when it comes to dealing with a11y issues. I have reviewed every line of code generated and edited its output, and wrote many code it fails to generate correctly any way.

I have also used it to generate the Polish and Japanese example translations. I am not a speaker of either, so I couldn't really check those.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a2878ad444da`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.