# Issue

**Title:** Improving rdf and cleaning tools

## Description

For cleaning tool: changing int to float for the pH argument to avoid errors for inputs as '6.4'

RDFtool: agent sometimes uses "action_input":{"input":...}
which easily solvable by including 
```input = input.get('input'.input)``` when handling the input to the tool. 

Finally, improve the description a little for the trajectory file id, and topology file id in the rdftool

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `59502a1784b9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.