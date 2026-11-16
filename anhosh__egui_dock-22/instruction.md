# Issue

**Title:** Added the ability to close tabs

## Description

Added the ability for tabs to be closed.
There are two ways a tab can be closed. either a user presses the close button and the `on_close` function returns true. or if the tab returns true from its `force_close` function that is called every frame.

The docking area will also now keep track of the currently "focused" leaf. This allows for tabs to be appended with `push_to_active_leaf`. if there is no currently focused leaf the function will add the tab to the first leaf it finds or crate a new leaf.

when tabs are dragged onto a new leaf they will be set as the active tab.
tabs can now also be reordered by dragging over existing tabs. dropping while over an existing tab will insert the new tab into its index pushing tabs to the right of it over (also making that index the active index).

You can now also specify functions on_close and force_close for the `TabBuilder`. if `on_close` isn't added it always will return true and if `force_close` isn't added it always returns false.

The theme of the close button can also be customized in the `Style` struct.
`close_tab_color` is the color of the inactive x.
`close_tab_active_color` is the color of the active x (the active tab on the currently focused leaf).
`close_tab_background_color` background color of the close button.

The close button can also be disabled with `show_close_buttons`
with `show_close_buttons` disabled `on_close` will never be called but `force_close` will still be called every frame.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `110ede5d81be`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.