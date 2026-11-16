# Issue

**Title:** Bump hypothesis from 6.140.2 to 6.141.1

## Description

Bumps [hypothesis](https://github.com/HypothesisWorks/hypothesis) from 6.140.2 to 6.141.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/HypothesisWorks/hypothesis/releases">hypothesis's releases</a>.</em></p>
<blockquote>
<h2>Hypothesis for Python - version 6.141.1</h2>
<p>Fixes an error when using the Ghostwriter with annotations that
include &quot;typing.ForwardRef&quot; on Python 3.14 (issue <a href="">#4565</a>).</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-141-1">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.141.0</h2>
<p>The &quot;from_field()&quot; and &quot;from_form()&quot; strategies from our Django extra
now support &quot;FileField&quot;.</p>
<p>Thanks to Arjoonn Sharma for this fix!</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-141-0">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.140.4</h2>
<p>Clean up internal &quot;<a href="https://github.com/overload"><code>@​overload</code></a>&quot; type annotations.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-140-4">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.140.3</h2>
<p>Fixes our bundled &quot;run_conformance_test()&quot; not respecting
&quot;avoid_realization&quot;.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-140-3">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>64eb8fa</code></a> Bump hypothesis-python version to 6.141.1 and update changelog</li>
<li><a href=""><code>dce1794</code></a> Merge pull request <a href="">#4566</a> from Liam-DeVoe/fix-ghostwriter</li>
<li><a href=""><code>4a8a37f</code></a> avoid name collision</li>
<li><a href=""><code>14ee7c1</code></a> fix ghostwriter error on 3.14</li>
<li><a href=""><code>7b764c1</code></a> Bump hypothesis-python version to 6.141.0 and update changelog</li>
<li><a href=""><code>f30b6c0</code></a> Merge pull request <a href="">#4121</a> from theSage21/from_form</li>
<li><a href=""><code>2fabea4</code></a> better test</li>
<li><a href=""><code>5d59662</code></a> Merge branch 'master' into from_form</li>
<li><a href=""><code>d0d7cd0</code></a> reword release</li>
<li><a href=""><code>e4e3294</code></a> Bump hypothesis-python version to 6.140.4 and update changelog</li>
<li>Additional commits viewable in <a href="https://github.com/HypothesisWorks/hypothesis/compare/hypothesis-python-6.140.2...hypothesis-python-6.141.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=hypothesis&package-manager=pip&previous-version=6.140.2&new-version=6.141.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bffd35f3348c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.