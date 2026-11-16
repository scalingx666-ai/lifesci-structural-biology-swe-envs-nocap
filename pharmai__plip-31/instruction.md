# Issue

**Title:** Excluded ligands not captured in PLIPXML

## Description

PLIPXML.excluded contains only garbage whitepace character when excluded_ligands is present in the report.xml. See attachement:

```
(venv_plip) zohixe92@worker02:~/plip/excluded_ligands$ python
Python 2.7.11 (default, Jan  6 2017, 12:05:36)
[GCC 4.8.4] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> from plip.modules.plipxml import PLIPXML
>>> report = PLIPXML('report.xml')
>>> report.excluded
'\n    '
```
Now the same code gives the correct result:
```
(venv_plip) zohixe92@worker02:~/plip/excluded_ligands$ python
Python 2.7.11 (default, Jan  6 2017, 12:05:36)
[GCC 4.8.4] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> from plip.modules.plipxml import PLIPXML
>>> report = PLIPXML('report.xml')
>>> report.excluded
['SR']
```


[report.xml.gz](https://github.com/ssalentin/plip/files/2102541/report.xml.gz)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `00e0758e4693`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.