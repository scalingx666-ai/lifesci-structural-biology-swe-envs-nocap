# Issue

**Title:** Introduce a base class for classes with JSON-interchange functions

## Description

This PR introduces a base class for many other existing classes that need the JSON-interchange functionalities. The common, highe-level functions (from_json, to_json) are inherited from the base class. Whereas the specific encoding-decoding logics are defined within the individual subclass scope. 
The major objective is to reduce code duplication, improve error handling, and make future maintenance easier. This may or may not be an over-engineering of simple things that are already working, but I thought it would be really useful when I opened #279. I hope this can also help with the consistency issue in #288. 

- [x] Introduce `BaseJSONParsable` at 5ec1bf7
This working checkpoint shows the basic layout of class `BaseJSONParsable`. Note that `RDKitMoleculeSetup` is still a subclass of `MoleculeSetup`. For subclasses with additional inheritance relationships like this, the decoder/encoder of the parent may be used in the child class. 

- [x] ResidueChemTemplates: Harmonize from_json and from (data) json at 1cd7a77 
This working checkpoint shows how the parameter data JSON string and the standard serialized JSON of ResidueChemTemplates may be parsed in the same way. 

- [x] MoleculePreparation: harmonize from_config and from (deserialized json object) dict at 252bc95
For 

- [x] Revisit optional_keys
Future changes like #254 should be possible by changes made to __init__ and the JSON-interchange region in the subclass.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5e38dc909e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.