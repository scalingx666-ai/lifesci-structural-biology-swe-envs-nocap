# Issue

**Title:** Fix bug after saving-restoring a empty container with no SectionWidget.

## Description

SectionTitleWidget::mousePressEvent call 'grabMouse' to ensure the floaing widget can always follow the mouse after floated.
SectionTitleWidget::mouseMoveEvent check Qt::LeftButton.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d2d246710107`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.