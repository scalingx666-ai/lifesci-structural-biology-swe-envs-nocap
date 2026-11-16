# Issue

**Title:** More minor fixes

## Description

Dumping `ntoskrnl.exe` PDB doesn't crash with all options doesn't crash anymore

```cpp
struct _MMSECTION_FLAGS2
{
    unsigned int PartitionId:10;
    unsigned int NoCrossPartitionAccess:1;
    unsigned int SubsectionCrossPartitionReferenceOverflow:1;
};
```

This was crashing because of out of bounds, it says TODO there and the output with 'Fix offsets' (whatever that means) now is:

```cpp
struct _MMSECTION_FLAGS2// Size=0x4
{
    struct // Size=0x3
    {
        unsigned short PartitionId:10;// Offset=0x0 Size=0x2 BitOffset=0x0 BitSize=0xa
        unsigned char NoCrossPartitionAccess:1;// Offset=0x2 Size=0x1 BitOffset=0x0 BitSize=0x1
        unsigned char SubsectionCrossPartitionReferenceOverflow:1;// Offset=0x2 Size=0x1 BitOffset=0x1 BitSize=0x1
    };
};
```

Seems wrong, but at least it doesn't crash 🤷🏻

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e75b3591203f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.