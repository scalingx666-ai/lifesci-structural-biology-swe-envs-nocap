# Issue

**Title:** Bump pytest from 8.4.2 to 9.1.1

## Description

Bumps [pytest](https://github.com/pytest-dev/pytest) from 8.4.2 to 9.1.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest/releases">pytest's releases</a>.</em></p>
<blockquote>
<h2>9.1.1</h2>
<h1>pytest 9.1.1 (2026-06-19)</h1>
<h2>Bug fixes</h2>
<ul>
<li><a href="">#14220</a>: Fixed a logic bug in <code>pytest.RaisesGroup</code> which would might cause it to display incorrect &quot;It matches <!-- raw HTML omitted -->FooError()<!-- raw HTML omitted --> which was paired with <!-- raw HTML omitted -->BarError<!-- raw HTML omitted -->&quot; messages.</li>
<li><a href="">#14591</a>: Fixed a regression in pytest 9.1.0 which caused overriding a parametrized fixture with an indirect <!-- raw HTML omitted --><a href="https://github.com/pytest"><code>@​pytest</code></a>.mark.parametrize<!-- raw HTML omitted --> to fail with &quot;duplicate parametrization of '&lt;fixture name&gt;'&quot;.</li>
<li><a href="">#14606</a>: Fixed <code>list-item</code> typing errors from mypy in <code>@pytest.mark.parametrize &lt;pytest.mark.parametrize ref&gt;</code> <code>argvalues</code> parameter.</li>
<li><a href="">#14608</a>: Fixed a regression in pytest 9.1.0 where <code>conftest.py</code> files located in <code>&lt;invocation dir&gt;/test*</code> were no longer loaded as initial conftests when invoked without arguments.
This could cause certain hooks (like <code>pytest_addoption</code>) in these files to not fire.</li>
</ul>
<h2>9.1.0</h2>
<h1>pytest 9.1.0 (2026-06-13)</h1>
<h2>Removals and backward incompatible breaking changes</h2>
<ul>
<li>
<p><a href="">#14533</a>: When using <code>--doctest-modules</code>, autouse fixtures with <code>module</code>, <code>package</code> or <code>session</code> scope that are defined inline in Python test modules (not plugins or conftests) will now possibly execute twice.</p>
<p>If this is undesirable, move the fixture definition to a <code>conftest.py</code> file if possible.</p>
<p>Technical explanation for those interested:
When using <!-- raw HTML omitted -->--doctest-modules<!-- raw HTML omitted -->, pytest possibly collects Python modules twice, once as <code>pytest.Module</code> and once as a <code>DoctestModule</code> (depending on the configuration).
Due to improvements in pytest's fixture implementation, if e.g. the <code>DoctestModule</code> collects a fixture, it is now visible to it only, and not to the <code>Module</code>.
This means that both need to register the fixtures independently.</p>
</li>
</ul>
<h2>Deprecations (removal in next major release)</h2>
<ul>
<li>
<p><a href="">#10819</a>: Added a deprecation warning for class-scoped fixtures defined as instance methods (without <code>@classmethod</code>). Such fixtures set attributes on a different instance than the test methods use, leading to unexpected behavior. Use <code>@classmethod</code> decorator instead -- by <code>yastcher</code>.</p>
<p>See <code>10819</code> and <code>14011</code>.</p>
</li>
<li>
<p><a href="">#12882</a>: Calling <code>request.getfixturevalue() &lt;pytest.FixtureRequest.getfixturevalue&gt;</code> during teardown to request a fixture that was not already requested is now deprecated and will become an error in pytest 10.</p>
<p>See <code>dynamic-fixture-request-during-teardown</code> for details.</p>
</li>
<li>
<p><a href="">#13409</a>: Using non-<code>~collections.abc.Collection</code> iterables (such as generators, iterators, or custom iterable objects) for the <code>argvalues</code> parameter in <code>@pytest.mark.parametrize &lt;pytest.mark.parametrize ref&gt;</code> and <code>metafunc.parametrize &lt;pytest.Metafunc.parametrize&gt;</code> is now deprecated.</p>
<p>These iterables get exhausted after the first iteration,
leading to tests getting unexpectedly skipped in cases such as running <code>pytest.main()</code> multiple times,
using class-level parametrize decorators,
or collecting tests multiple times.</p>
<p>See <code>parametrize-iterators</code> for details and suggestions.</p>
</li>
<li>
<p><a href="">#13946</a>: The private <code>config.inicfg</code> attribute is now deprecated.
Use <code>config.getini() &lt;pytest.Config.getini&gt;</code> to access configuration values instead.</p>
<p>See <code>config-inicfg</code> for more details.</p>
</li>
<li>
<p><a href="">#14004</a>: Passing <code>baseid</code> to <code>~pytest.FixtureDef</code> or <code>nodeid</code> strings to fixture registration APIs is now deprecated. These are internal pytest APIs that are used by some plugins.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>cf470ec</code></a> Prepare release version 9.1.1</li>
<li><a href=""><code>e0c8ce6</code></a> Merge pull request <a href="">#14625</a> from pytest-dev/patchback/backports/9.1.x/a07c31a97...</li>
<li><a href=""><code>1b82d16</code></a> Merge pull request <a href="">#14624</a> from pytest-dev/patchback/backports/9.1.x/b375b79ec...</li>
<li><a href=""><code>501c4bc</code></a> Merge pull request <a href="">#14596</a> from bluetech/doc-classmethod</li>
<li><a href=""><code>b61f588</code></a> Merge pull request <a href="">#14622</a> from chrisburr/fix-14608-initial-conftest-test-subdir</li>
<li><a href=""><code>9a567e0</code></a> [automated] Update plugin list (<a href="">#14617</a>) (<a href="">#14618</a>)</li>
<li><a href=""><code>ef8b299</code></a> Merge pull request <a href="">#14620</a> from pytest-dev/patchback/backports/9.1.x/680f9f3ed...</li>
<li><a href=""><code>66abd07</code></a> Merge pull request <a href="">#14220</a> from bysiber/fix-stale-iexp-raisesgroup</li>
<li><a href=""><code>79fbf93</code></a> Merge pull request <a href="">#14612</a> from pytest-dev/patchback/backports/9.1.x/974ed48b6...</li>
<li><a href=""><code>0d312eb</code></a> Merge pull request <a href="">#14611</a> from bluetech/parametrize-argvalues-typing</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest/compare/8.4.2...9.1.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pytest&package-manager=pip&previous-version=8.4.2&new-version=9.1.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef3e38c61a3a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.