# Issue

**Title:** HTML diagnostic report

## Description

As mentioned in PR #100 I have been experimenting with an output mode that produces a self-contained HTML diagnostic report. This is especially useful for understanding failures in less obvious or edge-case structures.

It builds on the structured diagnostics from this PR and adds summary tables and visualisations of the implicated atoms and distances.

Here is the same example from OpenBind I shared before, but in the HTML output format:
<img width="1226" height="599" alt="image" src="https://github.com/user-attachments/assets/791496e3-61f2-4bc8-b260-ee64a8d47326" />

The label placement is heuristic and is not always perfect for crowded structures, but I have found the report very useful for quickly understanding failures. It doesn't support detailed diagnosis for all features, but it does for a lot of the most common ones (distance to protein, steric clash, ring flatness, ...)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1dd61e568d45`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.