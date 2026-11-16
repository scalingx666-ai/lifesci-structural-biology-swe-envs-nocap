# Issue

**Title:** Close structure and subset file handles explicitly

## Description

Close the seven remaining unmanaged structure-write and subset-read handles, including on serialization and I/O failures. Keep file formats, open order, subset matching and completion markers unchanged.

Supersedes #270 and #275; includes only the overlapping file-lifetime changes from #152. FoldingWriter already closes its files on main.

Credits: @goran-mh for issue #204, @fnachon for #270, @AtharvaTilewale for #275, and @y1zhou for the overlapping #152 changes.

Validation: 18 regression cases fail on baseline and pass with this change. Tests exercise real writer/parser entry points, retained streams, successful output, serialization/write/read failures and completion-marker timing. Existing folding suites: 104 passed, 12 skipped because optional wandb is absent.

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb564724be38`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.