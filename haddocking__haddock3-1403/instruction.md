# Issue

**Title:** Bump hypothesis from 6.138.10 to 6.140.2

## Description

Bumps [hypothesis](https://github.com/HypothesisWorks/hypothesis) from 6.138.10 to 6.140.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/HypothesisWorks/hypothesis/releases">hypothesis's releases</a>.</em></p>
<blockquote>
<h2>Hypothesis for Python - version 6.140.2</h2>
<p>The automatic switch to the CI &quot;settings profile&quot; now works under tox
(for &quot;tox &gt;= 4.30.0&quot;).</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-140-2">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.140.1</h2>
<p>This patch re-enables the warning for incompatible &quot;shared()&quot;
strategies that was first enabled in v6.133.0 but disabled in
v6.135.15.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-140-1">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.140.0</h2>
<p>&quot;characters()&quot; now validates that the elements of the
&quot;exclude_characters&quot; and &quot;include_characters&quot; arguments are single
characters, which was always assumed internally. For example,
&quot;exclude_characters=[&quot;a&quot;, &quot;b&quot;]&quot; is valid while
&quot;exclude_characters=[&quot;ab&quot;]&quot; will now raise an error up-front.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-140-0">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.139.3</h2>
<p>Add &quot;phase&quot; to the hypothesis-specific metadata in observability.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-139-3">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.139.2</h2>
<p>Internal refactoring for new lint rules.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-139-2">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.139.1</h2>
<p>Fixed another typo in error message around function-scoped fixtures.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-139-1">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.139.0</h2>
<p>Add &quot;get_current_profile_name()&quot;, which returns the name of the
current settings profile.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-139-0">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.138.17</h2>
<p>Fixed typo in error message around function-scoped fixtures.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-138-17">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.138.16</h2>
<p>Improved error message for &quot;DeadlineExceeded&quot;.</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>275d496</code></a> Bump hypothesis-python version to 6.140.2 and update changelog</li>
<li><a href=""><code>3b95a47</code></a> Merge pull request <a href="">#4553</a> from Liam-DeVoe/tox-ci</li>
<li><a href=""><code>549d8cd</code></a> Bump hypothesis-python version to 6.140.1 and update changelog</li>
<li><a href=""><code>b3146b0</code></a> Merge pull request <a href="">#4509</a> from jobh/fix_shared_strategy_warnings</li>
<li><a href=""><code>af304d9</code></a> Remove a redundant hash in calc_label</li>
<li><a href=""><code>43a65dc</code></a> Revert changes to integers/floats label calculation</li>
<li><a href=""><code>f1e78f7</code></a> Add test for coverage</li>
<li><a href=""><code>c5fa0d4</code></a> formatting, lint</li>
<li><a href=""><code>b5dc8ff</code></a> Update a test</li>
<li><a href=""><code>7cb9389</code></a> lint and flatmap</li>
<li>Additional commits viewable in <a href="https://github.com/HypothesisWorks/hypothesis/compare/hypothesis-python-6.138.10...hypothesis-python-6.140.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=hypothesis&package-manager=pip&previous-version=6.138.10&new-version=6.140.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3620166000a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.