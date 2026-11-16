# Issue

**Title:** Add more QOL methods to ``DockState``, and change the structure of ``Node``

## Description

# Goal

This PR aims to be a stepping stone in improving ``egui_dock``.

For example, setting the active tab from a method in ``Node``, rather than awkwardly getting a ``NodeIndex`` and ``TabIndex`` which can then be passed to ``Tree::set_active_tab``.

On top of this, two new types have been added: ``LeafNode`` and ``SplitNode``, which now act as the inner data of the ``Node::Leaf``, ``Node::Horizontal``, and ``Node::Vertical`` enum variants.

Some of the new methods added are:

``DockState::iter_leaves``, iterate over the ``LeafNode``s in a tree, saving the user from unwrapping each node.
``DockState::find_tab_from``, find a tab based on a custom condition, rather than a ``eq`` match as ``find_tab`` does.
``Node::get_leaf``, get a ``Option<LeafNode>`` from a ``Node``, rather than using a match statement to find out if it's a leaf or not.

# Todo

fix the changelog, make tests pass

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `07ba143e2f95`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.