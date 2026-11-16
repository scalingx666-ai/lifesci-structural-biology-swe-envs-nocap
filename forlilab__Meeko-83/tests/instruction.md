# Issue

**Title:** Json Encoders and Decoders in Molsetups and Chorizo Residues

## Description

Adding JSON encoders and decoders for the MoleculeSetup class and the classes in linked_rdkit_chorizo, tests for those JSON encoders and decoders, and some starting documentation to the molecule setup class.

Now, to get a JSON of an object you should specify an encoder in the json.dumps command:

`json.dumps(a_molecule_setup, cls = MoleculeSetup)`

And to extract an object from JSON text, you can specify an object hook to decode the json string input to an object:

`json.loads(json_string, object_hook=molsetup_json_decoder)`

The following JSON Encoders have been added
MoleculeSetupEncoder
ChorizoResidueEncoder
ResidueTemplateEncoder
ResiduePadderEncoder
ResidueChemTemplatesEncoder
LinkedRDKitChorizoEncoder

The following JSON Decoders have been added
molsetup_json_decoder
chorizo_residue_json_decoder
residue_template_json_decoder
residue_padder_json_decoder
residue_chem_templates_json_decoder
linked_rdkit_chorizo_json_decoder

Additional work that needs to be done following this PR:
- Reorganize and improve MoleculeSetup json encoding/decoding testing, both by improving the code organization in the tests and by more thoroughly checking MoleculeSetup attributes for proper type conversion
- More test cases for linked_rdkit_chorizo encoders and decoders covering cases where there is incomplete data in the objects or where data might be corrupted

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d142a3897bf0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.