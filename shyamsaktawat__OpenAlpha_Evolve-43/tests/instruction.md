# Issue

**Title:** Enhance task definition and evaluation framework

## Description

I added, what I think, a simpler way to structure the problem and test cases using yaml. This also include support for functions as test cases. I moved the shortest path example from main to `examples/shortest_path.yaml` to make the changes clearer of how to structure the yaml file. I also added a few examples of how to use functions.

- Updated README to reflect YAML task definition usage.
- Refactored main.py to load task configurations from YAML files.
- Improved evaluator agent to support validation functions in tests.
- Created shortest_path.yaml with detailed task and validation function examples.
- Introduced 'tests' attribute in TaskDefinition interface.
- Added asyncio import in code_generator/agent.py.
- Modified DEBUG setting in settings.py to handle string input.
- Removed API key check from app.py.
- Added test cases for evaluator agent, including validation function scenarios.

This still needs to be updated for app.py, that is why I kept the json support as "legacy" so it wont break. 

Give it a go and see if everything works so that I haven't missed anything.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `762aa96aa881`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.