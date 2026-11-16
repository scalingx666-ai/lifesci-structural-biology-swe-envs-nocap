# Issue

**Title:** Bump kaleido from 1.2.0 to 1.3.0

## Description

> [!WARNING]
> Dependabot will stop supporting `python v3.9`!
>
> Please upgrade to one of the following versions: `v3.9`, `v3.10`, `v3.11`, `v3.12`, `v3.13`, or `v3.14`.
>

Bumps [kaleido](https://github.com/plotly/kaleido) from 1.2.0 to 1.3.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/kaleido/releases">kaleido's releases</a>.</em></p>
<blockquote>
<h2>v1.3.0</h2>
<h3>Added</h3>
<ul>
<li>Allow for request headers to be added to Choreographer calls [<a href="">#446</a>]</li>
</ul>
<h3>Changed</h3>
<ul>
<li>Significant refactor, better organization</li>
<li><code>write_fig</code> and <code>_from_object</code> now take an additional argument:
<code>cancel_on_error: bool, default False</code>. See docs.</li>
<li>Update Choreographer to v1.3.0 [<a href="">#449</a>]</li>
</ul>
<h3>Deprecated</h3>
<ul>
<li>Unused <code>path</code> argument for <code>calc_fig</code> was deprecated.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fixed race condition where two render tasks would choose the same filename</li>
<li>Fix issue where exporting large figures could cause hang [<a href="">#442</a>], with thanks to <a href="https://github.com/EliasTalcott"><code>@​EliasTalcott</code></a> for the contribution!</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/Kaleido/blob/master/CHANGELOG.md">kaleido's changelog</a>.</em></p>
<blockquote>
<h2>v1.3.0</h2>
<h3>Added</h3>
<ul>
<li>Allow for request headers to be added to Choreographer calls [<a href="">#446</a>]</li>
</ul>
<h3>Changed</h3>
<ul>
<li>Significant refactor, better organization</li>
<li><code>write_fig</code> and <code>_from_object</code> now take an additional argument:
<code>cancel_on_error: bool, default False</code>. See docs.</li>
<li>Update Choreographer to v1.3.0 [<a href="">#449</a>]</li>
</ul>
<h3>Deprecated</h3>
<ul>
<li>Unused <code>path</code> argument for <code>calc_fig</code> was deprecated.</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fixed race condition where two render tasks would choose the same filename</li>
<li>Fix issue where exporting large figures could cause hang [<a href="">#442</a>], with thanks to <a href="https://github.com/EliasTalcott"><code>@​EliasTalcott</code></a> for the contribution!</li>
</ul>
<h2>v1.3.0rc0</h2>
<ul>
<li>Significant refactor, better organization</li>
<li><code>write_fig</code> and <code>_from_object</code> now take an additional argument:
<code>cancel_on_error: bool, default False</code>. See docs.</li>
<li>Unused <code>path</code> argument for <code>calc_fig</code> was deprecated.</li>
<li>Fixed race condition where two render tasks would choose the same filename</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>b7a00c4</code></a> Merge pull request <a href="">#451</a> from plotly/release-v1.3.0</li>
<li><a href=""><code>423a4f1</code></a> Update setuptools config to find required subpackages</li>
<li><a href=""><code>28131a7</code></a> Updates for release v1.3.0</li>
<li><a href=""><code>f72dc86</code></a> Merge pull request <a href="">#366</a> from tschm/patch-3</li>
<li><a href=""><code>0c5e890</code></a> Merge pull request <a href="">#450</a> from plotly/cam/js-dependency-updates-may-2026</li>
<li><a href=""><code>4e95de5</code></a> Bump pygments from 2.19.2 to 2.20.0 in /src/py</li>
<li><a href=""><code>90ddc9d</code></a> Bump urllib3 from 2.2.3 to 2.6.3 in /src/py</li>
<li><a href=""><code>f9b850e</code></a> chore: Update JS dependencies for security fixes</li>
<li><a href=""><code>0978e65</code></a> Merge pull request <a href="">#432</a> from plotly/dependabot/npm_and_yarn/src/js/minimatch-...</li>
<li><a href=""><code>b639582</code></a> Merge pull request <a href="">#429</a> from plotly/dependabot/npm_and_yarn/src/js/qs-6.14.2</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/kaleido/compare/v1.2.0...v1.3.0">compare view</a></li>
</ul>
</details>
<br />

<details>
<summary>Most Recent Ignore Conditions Applied to This Pull Request</summary>

| Dependency Name | Ignore Conditions |
| --- | --- |
| kaleido | [< 0.3, > 0.2.1] |
</details>

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=kaleido&package-manager=pip&previous-version=1.2.0&new-version=1.3.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `92fda3d6d178`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.