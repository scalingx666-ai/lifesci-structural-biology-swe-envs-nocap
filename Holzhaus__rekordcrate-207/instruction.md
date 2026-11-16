# Issue

**Title:** Refactor page headers and row groups to make reexport reproducible

## Description

First of all, I'm sorry about the line change count. I touched essentially every line of the tests to remove a few layers of indentation. You might be able to review the file by switching the whitespace diff mode.

This PR replaces all "calculated" fields (marked with `br(temp)` and `bw(calc)`) with verbatim "dumb" fields that need to be set by the user, per this discussion about the philosophy of this crate: 

It does so by implementing these changes:
* Row offsets are explicitly stored in the RowGroup (functionally reverts #197)
* Index shifts are explicitly stored (functionally reverts #196)
* Rows are stored alongside their heap offsets in a BTreeMap and written explicitly to those locations rather than inferring the location of each from the RowGroup offsets and presence flags
* `num_tables` and `num_entries` in the database header are now explicit fields

I also made these quality of life changes:
* ExplicitPadding and `align_by` has been removed as write location is now fully controlled by explicit offsets - however I did add some BinWrite alignment and padding directives for non-explicit-offset use
* Header fields in Page, IndexPageContent, DataPageContent have been moved into separate PageHeader etc structures, so that downstream code can generate them while serializing the dynamic content in a different way (achieving auto-write alongside explicit data structures on read)
* Various fields have been marked public as they need to be set by the user when constructing the data structures
* Row data has been moved to DataPageContent (previously part of RowGroup) since with the row offset/row group changes they should be considered part of the page heap, not part of the row group. It is the user's responsibility to make sure the offsets match
* Simplification of BinWrite for a bunch of stuff, including replacing some manual implementations with the attribute style

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a8aa234712eb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.