# Issue

**Title:** Translations

## Description

This change lets you override text in context menus and provides groundwork for adding more overridable text to the `DockArea` widget.

One can use this feature e.g. to provide translations to different languages.

Example usage:

```rust
let translations_pl = Translations {
    tab_context_menu: TabContextMenuTranslations {
        close_button: "Zamknij zakładkę".to_string(),
        eject_button: "Przenieś zakładkę do nowego okna".to_string(),
    },
};
let dock_state = DockState::<Tab>::new(vec![]).with_translations(translations_pl);

// Alternatively:
let mut dock_state = DockState::<Tab>::new(vec![]);
dock_state.translations.tab_context_menu.close_button = "タブを閉じる".to_string();
dock_state.translations.tab_context_menu.eject_button = "タブを新しいウィンドウへ移動".to_string();
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9ace31a98f7f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.