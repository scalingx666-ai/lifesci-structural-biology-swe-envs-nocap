# Issue

**Title:** Release 0.10

## Description

### Added
- From ():
  - Tabs, the close tab buttons and the add tab buttons are now focusable with the keyboard and interactable with the enter key and space bar.
  - Separators are now focusable with the keyboard and movable using the arrow keys while control or shift is held.
  - `TabStyle::active_with_kb_focus`, `TabStyle::inactive_with_kb_focus` and `TabStyle::focused_with_kb_focus` for style of tabs that are focused with the keyboard.
- Missing translation for the tooltip showing when you hover on a grayed out window close button. ()

### Fixed
- Widgets inside tabs are now focusable with the tab key on the keyboard. ()

### Breaking changes
- Upgraded to egui 0.25
- Replaced `Default` implementations for `{TabContextMenu,Window,}Translations` with associated functions called `english`. ()

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fae7fbc9483e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.