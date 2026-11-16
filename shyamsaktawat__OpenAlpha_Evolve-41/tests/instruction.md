# Issue

**Title:** Fix fixed child id

## Description

```
generation_tasks = []
for i, parent in enumerate(parents):
        for j in range(num_offspring_per_parent):
            child_id = f"{self.task_definition.id}_gen{gen}_child{len(offspring_population)}"
            generation_tasks.append(self.generate_offspring(parent, gen, child_id))
            
generated_offspring_results = await asyncio.gather(*generation_tasks, return_exceptions=True)
```

Child program id is always fixed to 0 because length of offspring_population stays 0 until tasks are gathered.
When we save program, previous program will be overwritten

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43412b31f285`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.