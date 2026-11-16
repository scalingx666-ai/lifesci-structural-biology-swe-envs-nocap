# Issue

**Title:** Adding __init__.py for pip install Support

## Description

Thank you for developing the NeuralPlexer project and for your detailed installation guidelines.

I'm currently looking to integrate NeuralPlexer as a module within my existing development environment. Rather than setting up a new environment using the `make` command, I'd greatly appreciate it if you could support a more flexible installation method using `pip install`.

I attempted to install NeuralPlexer using the command `pip install git+https://github.com/zrqiao/NeuralPlexer.git.`
 The installation completed without errors, but I encountered the following issue when trying to import the `neuralplexer.data` module:

```
ImportError: cannot import name 'data' from 'neuralplexer' (/path/to/your/env/site-packages/neuralplexer/__init__.py)
```

Upon investigation, it appears this error occurs because the `neuralplexer/data` directory lacks an `__init__.py` file. For Python's module system to recognize subdirectories within a package as modules, they require an `__init__.py` file.

Therefore, I'd like to **propose a pull request that simply adds an empty `__init__.py` file to the `neuralplexer/data` directory.** This small change would enable installation via `pip install`, which would be incredibly helpful for developers looking to use NeuralPlexer alongside their other projects.

I'd be grateful if you would consider this proposal. Please feel free to ask if you have any questions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c52b10d3094`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.