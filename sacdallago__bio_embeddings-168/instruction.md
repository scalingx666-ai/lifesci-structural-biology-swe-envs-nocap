# Issue

**Title:** Get activations

## Description

After discussing with David (@prihoda), I'm creating a PR based on the issue #153 .

Enable returning files with activations for secondary structure and disorder predictions.
Config file can contain parameter `get_activations`, which controls whether these files are created.
Use softmax on raw activations tensors (`yhat_...`) to obtain "probabilities" for each of the classes. Return these from the `get_secondary_structure` function in `BasicAnnotationExtractor`, store them in `BasicSecondaryStructureResult` and subsequently in `BasicExtractedAnnotations`, which is returned by `get_annotations`.
In `predict_annotations_using_basic_models`, check for `get_activations` parameter; if true, create output files for activations from DSSP3, DSSP8 and disorder. Then, store activations into dataframes along with the sequence ID and residue number. Each row corresponds to one position in one sequence, columns correspond to sequence ID, residue number (1-based) and all the possible classes.
For each prediction type (DSSP3, DSSP8 and disorder), concatenate all dataframes and print to the corresponding csv file.

Looking forward to any comments, especially on the use of the config file, I'm a bit fuzzy on that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `97309f73c964`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.