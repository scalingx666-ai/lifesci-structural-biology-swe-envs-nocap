# Issue

**Title:** fix: verify syntax errors using compile instead of ast to improve syntax checking

## Description

ast.parse does actually not find all syntax error, running the provided dijkstra sample sometimes runs into a syntax error.
Consider this simple example using a faulty code that occurred during execution of the vanilla main.py:

```
import asyncio

from core.interfaces import TaskDefinition, Program
from evaluator_agent.agent import EvaluatorAgent

async def main():
    faulty_code = """
    
import json
import time
import sys
import math  # Import math for inf/nan constants

# User's code (function to be tested)
import heapq

def solve_shortest_paths(graph, start):
    # Initialize distances with infinity
    distances = {node: float('inf') for node in graph.keys()}
    distances[start] = 0  # Distance to the start node is 0

    # Priority queue to store (distance, node) pairs
    priority_queue = [(0, start)]

    while priority_queue:
        current_distance, current_node = heapq.heappop(priority_queue)

        # If the popped distance is greater than the known distance, skip
        if current_distance > distances[current_node]:
            continue
# Explore neighbors
if current_node in graph:  # Check if the current node has any outgoing edges
    for neighbor, weight in graph[current_node].items():
        distance = current_distance + weight

        # Only consider this new path if it's better
        if distance < distances[neighbor]:
            distances[neighbor] = distance
            heapq.heappush(priority_queue, (distance, neighbor))

    return distances

# Test execution logic
results = []
total_execution_time = 0
num_tests = 0

# Special constants for test cases
Infinity = float('inf')
NaN = float('nan')

test_cases = [{"input": [{"A": {"B": 1, "C": 4}, "B": {"C": 2, "D": 5}, "C": {"D": 1}, "D": {}}, "A"], "output": {"A": 0, "B": 1, "C": 3, "D": 4}}, {"input": [{"A": {"B": 1}, "B": {"A": 2, "C": 5}, "C": {"D": 1}, "D": {}}, "A"], "output": {"A": 0, "B": 1, "C": 6, "D": 7}}, {"input": [{"A": {"B": 1}, "B": {}, "C": {"D": 1}, "D": {}}, "A"], "output": {"A": 0, "B": 1, "C": Infinity, "D": Infinity}}, {"input": [{"A": {}, "B": {"C": 1}}, "A"], "output": {"A": 0, "B": Infinity, "C": Infinity}}, {"input": [{}, "A"], "output": {"A": 0}}, {"input": [{}, "A"], "output": {"A": 0}}, {"input": [{"X": {"Y": 1}}, "Z"], "output": {"Z": 0, "X": Infinity, "Y": Infinity}}, {"input": [{"s": {"u": 10, "x": 5}, "u": {"v": 1, "x": 2}, "v": {"y": 4}, "x": {"u": 3, "v": 9, "y": 2}, "y": {"s": 7, "v": 6}}, "s"], "output": {"s": 0, "u": 7, "v": 8, "x": 5, "y": 7}}, {"input": [{"A": {"B": 1, "C": 10}, "B": {"D": 2, "E": 5}, "C": {"F": 1}, "D": {"G": 3}, "E": {"G": 1, "H": 7}, "F": {"H": 2}, "G": {"I": 2}, "H": {"I": 1}, "I": {}}, "A"], "output": {"A": 0, "B": 1, "C": 10, "D": 3, "E": 6, "F": 11, "G": 6, "H": 12, "I": 8}}] 
function_to_test_name = "solve_shortest_paths"

# Make sure the function_to_test is available in the global scope
if function_to_test_name not in globals():
    # Attempt to find it if it was defined inside a class (common for LLM output)
    # This is a simple heuristic and might need refinement.
    found_func = None
    for name, obj in list(globals().items()):
        if isinstance(obj, type):
            if hasattr(obj, function_to_test_name):
                method = getattr(obj, function_to_test_name)
                if callable(method):
                    globals()[function_to_test_name] = method
                    found_func = True
                    break
    if not found_func:
        print(json.dumps({"error": f"Function '{function_to_test_name}' not found in the global scope or as a callable method of a defined class."}))
        sys.exit(1)
        
function_to_test = globals()[function_to_test_name]

for i, test_case in enumerate(test_cases):
    input_args = test_case.get("input")
    
    start_time = time.perf_counter()
    try:
        if isinstance(input_args, list):
            actual_output = function_to_test(*input_args)
        elif isinstance(input_args, dict):
            actual_output = function_to_test(**input_args)
        elif input_args is None:
             actual_output = function_to_test()
        else:
            actual_output = function_to_test(input_args)
            
        end_time = time.perf_counter()
        execution_time_ms = (end_time - start_time) * 1000
        total_execution_time += execution_time_ms
        num_tests += 1
        results.append({"test_case_id": i, "output": actual_output, "runtime_ms": execution_time_ms, "status": "success"})
    except Exception as e:
        end_time = time.perf_counter()
        execution_time_ms = (end_time - start_time) * 1000
        error_output = {
            "test_case_id": i,
            "error": str(e), 
            "error_type": type(e).__name__,
            "runtime_ms": execution_time_ms,
            "status": "error"
        }
        try:
            json.dumps(error_output)
        except TypeError:
            error_output["error"] = "Unserializable error object"
        results.append(error_output)

final_output = {"test_outputs": results}
if num_tests > 0:
    final_output["average_runtime_ms"] = total_execution_time / num_tests

def custom_json_serializer(obj):
    if isinstance(obj, float):
        if obj == float('inf'):
            return 'Infinity'
        elif obj == float('-inf'):
            return '-Infinity'
        elif obj != obj:
            return 'NaN'
    raise TypeError(f"Object of type {type(obj).__name__} is not JSON serializable")

print(json.dumps(final_output, default=custom_json_serializer))
    """

    faulty_program = Program("egal", faulty_code)

    task = TaskDefinition(
        id="generic_shortest_path_problem",
        description=(
            "Given a weighted, directed graph and a starting node, find the shortest distance "
            "from the starting node to all other nodes in the graph. "
            "The graph is represented as a dictionary where keys are node identifiers (e.g., strings or integers), "
            "and values are dictionaries representing outgoing edges. In these inner dictionaries, "
            "keys are neighbor node identifiers and values are the weights (costs) of the edges to those neighbors. "
            "If a node is unreachable from the start node, its distance should be considered infinity. "
            "The function should return a dictionary where keys are node identifiers and values are the "
            "calculated shortest distances from the start node. The start node\'s distance to itself is 0."
        ),
        function_name_to_evolve="solve_shortest_paths",
        input_output_examples=[
            {
                "input": [{"A": {"B": 1, "C": 4}, "B": {"C": 2, "D": 5}, "C": {"D": 1}, "D": {}}, "A"],
                "output": {"A": 0, "B": 1, "C": 3, "D": 4}
            },
            {
                "input": [{"A": {"B": 1}, "B": {"A": 2, "C": 5}, "C": {"D": 1}, "D": {}}, "A"],
                "output": {"A": 0, "B": 1, "C": 6, "D": 7}
            },
            {
                "input": [{"A": {"B": 1}, "B": {}, "C": {"D": 1}, "D": {}}, "A"],
                "output": {"A": 0, "B": 1, "C": float('inf'), "D": float('inf')}
            },
            {
                "input": [{"A": {}, "B": {"C": 1}}, "A"],
                "output": {"A": 0, "B": float('inf'), "C": float('inf')}
            },
            {
                "input": [{}, "A"],
                "output": {"A": 0}

            },
            {
                "input": [{}, "A"],
                "output": {"A": 0}
            },
            {
                "input": [{"X": {"Y": 1}}, "Z"],
                "output": {"Z": 0, "X": float('inf'), "Y": float('inf')}
            },
            {
                "input": [
                    {"s": {"u": 10, "x": 5}, "u": {"v": 1, "x": 2}, "v": {"y": 4}, "x": {"u": 3, "v": 9, "y": 2},
                     "y": {"s": 7, "v": 6}},
                    "s"
                ],
                "output": {"s": 0, "u": 7, "v": 8, "x": 5, "y": 7}
            },
            {
                "input": [
                    {
                        "A": {"B": 1, "C": 10},
                        "B": {"D": 2, "E": 5},
                        "C": {"F": 1},
                        "D": {"G": 3},
                        "E": {"G": 1, "H": 7},
                        "F": {"H": 2},
                        "G": {"I": 2},
                        "H": {"I": 1},
                        "I": {}
                    },
                    "A"
                ],
                "output": {"A": 0, "B": 1, "C": 10, "D": 3, "E": 6, "F": 11, "G": 6, "H": 12, "I": 8}
            }
        ],
        allowed_imports=["heapq"],

    )
    evaluator = EvaluatorAgent(task)

    await evaluator.evaluate_program(faulty_program, task)

if __name__ == '__main__':
    asyncio.run(main())
```

faulty_code contains an unindented return, the error is not caught using ast.parse.
Not sure if this is a good/valid fix, but at least the issue is reported

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0cccab45c893`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.