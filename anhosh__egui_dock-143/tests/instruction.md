# Issue

**Title:** Always allocate area for the `DockArea`.

## Description

The bug and the fix are trivial:

```rs
fn allocate_area_for_root(&mut self, ui: &mut Ui) {
    let style = self.style.as_ref().unwrap();
    let mut rect = ui.available_rect_before_wrap();

    if let Some(margin) = style.dock_area_padding {
        rect.min += margin.left_top();
        rect.max -= margin.right_bottom();
        ui.painter().rect(
            rect,
            margin.top,
            style.separator.color_idle,
            Stroke::new(margin.top, style.border.color),
        );
    }

    if self.tree.is_empty() {
        ui.allocate_rect(rect, Sense::hover()); // <------ THIS SHOULDN'T BE IN THIS BRANCH
        return;
    }

    self.tree[NodeIndex::root()].set_rect(rect);
}
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9257bd756de7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.