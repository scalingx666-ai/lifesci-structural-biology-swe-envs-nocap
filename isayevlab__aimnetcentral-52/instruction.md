# Issue

**Title:** Update griffe requirement from <2 to <3

## Description

Updates the requirements on [griffe](https://github.com/mkdocstrings/griffe) to permit the latest version.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/mkdocstrings/griffe/releases">griffe's releases</a>.</em></p>
<blockquote>
<h2>2.0.2</h2>
<h2><a href="https://github.com/mkdocstrings/griffe/releases/tag/2.0.2">2.0.2</a> - 2026-03-27</h2>
<p><!-- raw HTML omitted --><a href="https://github.com/mkdocstrings/griffe/compare/2.0.1...2.0.2">Compare with 2.0.1</a><!-- raw HTML omitted --></p>
<h3>Build</h3>
<ul>
<li>Add py.typed marker to packages (<a href="">ce46ba3</a> by Timothée Mazzucotelli).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/mkdocstrings/griffe/blob/main/CHANGELOG.md">griffe's changelog</a>.</em></p>
<blockquote>
<h2><a href="https://github.com/mkdocstrings/griffe/releases/tag/2.0.2">2.0.2</a> - 2026-03-27</h2>
<p><!-- raw HTML omitted --><a href="https://github.com/mkdocstrings/griffe/compare/2.0.1...2.0.2">Compare with 2.0.1</a><!-- raw HTML omitted --></p>
<h3>Build</h3>
<ul>
<li>Add py.typed marker to packages (<a href="">ce46ba3</a> by Timothée Mazzucotelli).</li>
</ul>
<h2><a href="https://github.com/mkdocstrings/griffe/releases/tag/2.0.1">2.0.1</a> - 2026-03-23</h2>
<p><!-- raw HTML omitted --><a href="https://github.com/mkdocstrings/griffe/compare/2.0.0...2.0.1">Compare with 2.0.0</a><!-- raw HTML omitted --></p>
<h3>Bug Fixes</h3>
<ul>
<li>Allow setting type parameters through aliases (<a href="">75c1236</a> by Timothée Mazzucotelli). <a href="">Issue-449</a></li>
</ul>
<h2><a href="https://github.com/mkdocstrings/griffe/releases/tag/2.0.0">2.0.0</a> - 2026-02-09</h2>
<p><!-- raw HTML omitted --><a href="https://github.com/mkdocstrings/griffe/compare/1.15.0...2.0.0">Compare with 1.15.0</a><!-- raw HTML omitted --></p>
<h3>Breaking Changes</h3>
<p>This version removes previously deprecated API:</p>
<ul>
<li><code>ExportedName</code>: <em>Public object was removed</em></li>
<li><code>infer_docstring_style(options)</code>: <em>Parameter was removed</em></li>
<li><code>parse_auto(options)</code>: <em>Parameter was removed</em></li>
<li><code>parse_google(options)</code>: <em>Parameter was removed</em></li>
<li><code>parse_numpy(options)</code>: <em>Parameter was removed</em></li>
<li><code>parse_sphinx(options)</code>: <em>Parameter was removed</em></li>
<li><code>assert_git_repo</code>: <em>Public object was removed</em></li>
<li><code>get_latest_tag</code>: <em>Public object was removed</em></li>
<li><code>get_repo_root</code>: <em>Public object was removed</em></li>
<li><code>tmp_worktree</code>: <em>Public object was removed</em></li>
</ul>
<h3>Features</h3>
<ul>
<li>Support merging overload annotations into implementation (<a href="">584cdb5</a> by Timothée Mazzucotelli). <a href="">Issue-442</a>, <a href="">PR-443</a></li>
<li>Add support for PEP 750 template strings (<a href="">59266a9</a> by ellie). <a href="">PR-440</a></li>
</ul>
<h3>Bug Fixes</h3>
<ul>
<li>Keep newlines in parameter (and other multiline directives) descriptions in Sphinx docstrings (<a href="">1fde0d2</a> by Timothée Mazzucotelli). <a href="">Issue-mkdocstrings-808</a>, <a href="">PR-438</a></li>
</ul>
<h3>Code Refactoring</h3>
<ul>
<li>Make <code>griffe</code> imports lazy in CLI (<a href="">4772456</a> by Timothée Mazzucotelli).</li>
<li>Split to <code>griffe</code>, <code>griffecli</code> and <code>griffelib</code> uv workspaces (<a href="">162c31c</a> by Bartosz Sławecki). <a href="">Issue-408</a>, <a href="">PR-434</a>, Co-authored-by: Timothée Mazzucotelli <a href="mailto:dev@pawamoy.fr">dev@pawamoy.fr</a></li>
<li>Remove deprecated code (<a href="">dcb075e</a> by Bartosz Sławecki). <a href="">PR-433</a>, Co-authored-by: Timothée Mazzucotelli <a href="mailto:dev@pawamoy.fr">dev@pawamoy.fr</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6f30ebb</code></a> chore: Prepare release 2.0.2</li>
<li><a href=""><code>ce46ba3</code></a> build: Add py.typed marker to packages</li>
<li><a href=""><code>006282c</code></a> chore: Fix publish duty</li>
<li><a href=""><code>8df2c40</code></a> chore: Prepare release 2.0.1</li>
<li><a href=""><code>1236192</code></a> chore: Update ty comments</li>
<li><a href=""><code>75c1236</code></a> fix: Allow setting type parameters through aliases</li>
<li><a href=""><code>862a891</code></a> chore: Template upgrade</li>
<li><a href=""><code>2666aaa</code></a> chore: Update sponsors section in README</li>
<li><a href=""><code>e30c321</code></a> style: Format code for Python 3.10</li>
<li><a href=""><code>051394a</code></a> chore: Add back title to type-check duty</li>
<li>Additional commits viewable in <a href="https://github.com/mkdocstrings/griffe/compare/0.1.0...2.0.2">compare view</a></li>
</ul>
</details>
<br />

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2d88996d5ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.