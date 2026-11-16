# Issue

**Title:** add LoRA finetune script

## Description

Adds a Python script that runs LoRA fine-tuning for ProstT5 (essentially it adds preprocessing code to this notebook and makes it into one script https://github.com/agemagician/ProtTrans/blob/master/Fine-Tuning/PT5_LoRA_Finetuning_per_residue_class.ipynb).

Requires 5 inputs:

* `--trainaafasta`  AA FASTA file of training protein dataset
* `--trainthreedifasta`   matching 3Di FASTA file of training protein dataset. Headers must match those in `--trainaafasta`
* `--validaafasta`  AA FASTA file of validation protein dataset
* `--validthreedifasta `  matching 3Di FASTA file of validation protein dataset. Headers must match those in `--validaafasta`
* `-o`  output directory where the fine-tuned model, plot and other files will be stored.

Example code

```
python finetune_prostt5_lora_script.py --trainaafasta train_aa.faa --trainthreedifasta train_3di.faa \
      --validaafasta valid_aa.faa  --validthreedifasta valid_3di.faa \
       -o test_prostt5_lora -b 1 --finetune_name prostt5_finetuned_model -f
```

You can also mask all residues below a certain pLDDT threshold (defaults to 70) with `--mask` and `--mask_threshold`. If you do this, you also need to provide a directory using `--pdb_dir` containing all training and validation set structures in the .pdb format, where the FASTA record ID matches the file name  in that directory.


```
python finetune_prostt5_lora_script.py --trainaafasta train_aa.faa --trainthreedifasta train_3di.faa \
      --validaafasta valid_aa.faa  --validthreedifasta valid_3di.faa \
       -o test_prostt5_lora -b 1 --finetune_name prostt5_finetuned_model --mask --mask_threshold 70 --pdb_dir directory_with_structures -f
```


George

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ec5375ba7492`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.