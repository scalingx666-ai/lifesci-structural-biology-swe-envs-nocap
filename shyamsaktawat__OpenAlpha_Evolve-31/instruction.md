# Issue

**Title:** I've been working on refactoring and analyzing your codebase as you r…

## Description

…equested.

Here's what I've done so far:
- I started by exploring your codebase, looking at `main.py` and other core components like `task_manager`, `evaluator_agent`, `code_generator`, and `prompt_designer`.
- I then created a 7-step plan for the analysis, which you approved.
- Step 1: I analyzed the `CodeGeneratorAgent._apply_diff` method for robustness. I found some issues with string stripping in its matching strategies and noted that test coverage could be better.
- Step 2: I reviewed the prompt engineering used for diff generation. It's mostly clear, but I suggested a few minor additions to help guide the language model on indentation.
- Step 3: I examined the error handling and feedback loops and found them to be generally robust. Concerns about JSON serialization in `EvaluatorAgent` appear to be adequately handled.
- Step 4: I assessed the overall flow of `TaskManagerAgent`. It seems to be a sound EA loop with good delegation to other agents. I did notice a minor no-op `if` condition.
- Step 5: I compiled a list of fixes and prioritized them.
- Step 6: I investigated test coverage and confirmed that the tests for `_apply_diff` are basic and that `_execute_code_safely` currently lacks tests.

Based on your feedback, I started working on implementing some fixes:
- I successfully removed the no-op `if` condition in `TaskManagerAgent`.
- I successfully refined the diff prompt in `CodeGeneratorAgent` to emphasize indentation.
- I successfully made the bug-fix threshold configurable in `TaskManagerAgent` and `config/settings.py`.
- I successfully improved the clarity of `SelectionControllerInterface` by adding `initialize_islands` to the interface. I also updated `TaskManagerAgent` to call it directly and simplified the `execute` method on `SelectionControllerAgent`.

Currently, I'm stuck on implementing the fixes for `_apply_diff`:
- I was working on "Implement Critical `_apply_diff` Fixes (P1.1 & P2.2) in `CodeGeneratorAgent`."
- The goal was to refactor `_apply_diff` in `code_generator/agent.py` to:
    1.  Improve Strategy 1 (Exact Match) by trying true exact matches first, then matches with stripped newlines, and finally fully stripped matches.
    2.  Improve Strategy 3 (Line-by-Line Heuristic) to be sensitive to indentation by not stripping lines during comparison.
- I repeatedly failed to apply these changes. It seems the complexity and length of the `_apply_diff` method made it difficult to generate accurate diffs, leading to "search block not found" errors.
- An attempt to provide the entire new method body for replacement also failed due to a syntax error I made.

Since I'm nearing the end of our current interaction, I'm submitting the changes I've managed to make so far. Unfortunately, the `_apply_diff` method in `code_generator/agent.py` has not yet been successfully modified with the intended P1.1 and P2.2 fixes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0cccab45c893`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.