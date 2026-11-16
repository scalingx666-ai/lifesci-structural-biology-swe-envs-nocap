# Issue

**Title:** Release 0.6

## Description

And introduces some improvements to `TabViewer` and style:

**Added**

- `TabViewer::tab_style_override` that lets you define a custom `TabsStyle` for an individual tab ()
- `ButtonsStyle::add_tab_border_color` for the `+` button's left border ()
- `TabBarStyle::rounding` for rounding of the tab bar, independent from tab rounding ()
- Separate `from_egui` methods for `ButtonsStyle`, `SeparatorStyle`, `TabBarStyle`, and `TabStyle`. ()

**Breaking changes**

- Upgraded `egui` to version 0.22 ()
- Renamed `TabsStyle` to `TabStyle` ()
- Removed `StyleBuilder` ()
- Removed `TabViewer::inner_margin_override` – no deprecation as it's in direct conflict with `TabViewer::tab_style_override` ()
- Moved `Style::default_inner_margin` to `TabsStyle::inner_margin` ()
- Moved `TabStyle::hline_color` to `TabBarStyle::hline_color` ()

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d60b2ae42e6f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.