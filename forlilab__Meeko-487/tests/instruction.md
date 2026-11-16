# Issue

**Title:** fix: use args.padding in --box_enveloping box branch

## Description

`mk_prepare_receptor.py` crashes with `NameError: name 'padding' is not defined` whenever `--box_enveloping` is combined with `-g/--write_gpf` or `-v/--write_vina_box`. The branch at line 1040 passes a bare `padding`, but there is no local by that name in `main()`. The other call site (line 622) correctly uses `args.padding`.

This is the exact command documented in tutorial 1:

```bash
pdb_file="Meeko/example/tutorial1/input_files/1iep_protein.pdb"
lig_file="Meeko/example/tutorial1/input_files/xray-imatinib.pdb"
mk_prepare_receptor.py --read_pdb $pdb_file -o rec_1iep -p -v \
--box_enveloping $lig_file --padding 5
```

Tutorial 3 uses the same combination, so both walkthroughs currently fail on develop. It looks like it came in with 62ebd61 during the `--bad_res_radius` rename.

After the fix, the tutorial 1 command above runs to completion and the generated `rec_1iep.box.txt` and `rec_1iep.box.pdb` match the reference files committed under `example/tutorial1/` byte for byte. I also confirmed the change has no effect on the receptor PDBQT output, which is identical to what develop produces today.

Worth noting that the existing `rec_1iep.pdbqt` in `example/tutorial1/` no longer matches current output, but that is a separate pre-existing drift in charge sign and atom name column formatting and is unrelated to this change.

Existing tests pass. Nothing currently covers the `--box_enveloping` plus gpf/vina-box combination, which is why this went unnoticed. There is no CLI test harness in `test/` at the moment so I have left the fix on its own, but happy to add one if you would like it in this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `de150540fe0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.