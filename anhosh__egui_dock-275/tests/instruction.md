# Issue

**Title:** Fix `retain_tabs` behavior with `Empty` nodes in the list

## Description

There is a subtle bug, either in `remove_leaf` or `retain_tabs` depending on how you look at it.

When removing leafs, it's possible to leave trailing `Node::Empty` items in the list.  For example, after shuffling tabs around, I found a node list of
```json
"nodes": [
    {
      "Leaf": { "(elided)" }
    },
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty"
],
```

I'm not sure if this is a bug or not; it depends on the invariants associated with the `nodes` list.

However, it interacts poorly with the call to `balance` at the end of `retain_tabs`: when `balance` deletes an emptied node, it marks that node's parent for deletion if the node's children are both empty.  Both children of the `Leaf` are empty, so it deletes the leaf as well, even if it should be retained!

This PR updates `remove_leaf` to remove unused `Node::Empty` items from the back of the tree.  This should prevent us from constructing a tree with problematic state.

However, there may be serialized dock states in the wild with these spurious `Empty` values, so I also updated `balance` to correctly handle the situation: if a parent node is a `Leaf`, it should not be removed!

I believe this is #264, and it may also be #262.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb67c8faaafc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.