# Issue

**Title:** Force more data to string (issue #23)

## Description

Anything with *type is a ligand name and should always be interpreted as string, so I added `force_string`. I also added a few more `force_string` here and there, just in case some weird value looking like a number shows up at some point, even though I haven't seen it happen yet.

The output as in #23 now looks like:
```
>>> import plip.modules.plipxml as plip
>>> report = plip.PLIPXML("report.xml")
>>> print(report.bsites['INF:A:1308'].hydrophobics[0].restype_lig)
INF
>>> print(type(report.bsites['INF:A:1308'].hydrophobics[0].restype_lig))
<class 'lxml.etree._ElementStringResult'>
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e282af8249a0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.