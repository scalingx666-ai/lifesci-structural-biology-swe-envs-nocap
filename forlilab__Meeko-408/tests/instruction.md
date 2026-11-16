# Issue

**Title:** add template to monomer JSON encoder

## Description

Serialize and de-serialize (JSON) the instance of ResidueTemplate on each Monomer. Also removed the `link_labels` attribute in Monomer, which was added in passing (never defined in the init) because the ResidueTemplate already has the link_labels. 

For `Polymer`s serialized with v0.6.1 and older, the residue template is recovered from the serialized `ResidueChemTemplates`, if present. I don't know at this time if it is guaranteed that the template will be in ResidueChemTemplates (maybe it's not if added manually by a user, I didn't check). But there's nothing we can do about it anyway.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `957ea5199b1a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.