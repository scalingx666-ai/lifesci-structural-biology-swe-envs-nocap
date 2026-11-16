# Issue

**Title:** Bump pytest-mock from 3.14.1 to 3.15.1

## Description

Bumps [pytest-mock](https://github.com/pytest-dev/pytest-mock) from 3.14.1 to 3.15.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest-mock/releases">pytest-mock's releases</a>.</em></p>
<blockquote>
<h2>v3.15.1</h2>
<p><em>2025-09-16</em></p>
<ul>
<li><a href="">#529</a>: Fixed <code>itertools._tee object has no attribute error</code> -- now <code>duplicate_iterators=True</code> must be passed to <code>mocker.spy</code> to duplicate iterators.</li>
</ul>
<h2>v3.15.0</h2>
<p><em>2025-09-04</em></p>
<ul>
<li>Python 3.8 (EOL) is no longer supported.</li>
<li><a href="">#524</a>: Added <code>spy_return_iter</code> to <code>mocker.spy</code>, which contains a duplicate of the return value of the spied method if it is an <code>Iterator</code>.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pytest-dev/pytest-mock/blob/main/CHANGELOG.rst">pytest-mock's changelog</a>.</em></p>
<blockquote>
<h2>3.15.1</h2>
<p><em>2025-09-16</em></p>
<ul>
<li><code> &lt;</code>_: Fixed <code>itertools._tee object has no attribute error</code> -- now <code>duplicate_iterators=True</code> must be passed to <code>mocker.spy</code> to duplicate iterators.</li>
</ul>
<h2>3.15.0</h2>
<p><em>2025-09-04</em></p>
<ul>
<li>Python 3.8 (EOL) is no longer supported.</li>
<li><code> &lt;</code>_: Added <code>spy_return_iter</code> to <code>mocker.spy</code>, which contains a duplicate of the return value of the spied method if it is an <code>Iterator</code>.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>e1b5c62</code></a> Release 3.15.1</li>
<li><a href=""><code>184eb19</code></a> Set <code>spy_return_iter</code> only when explicitly requested (<a href="">#537</a>)</li>
<li><a href=""><code>4fa0088</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#536</a>)</li>
<li><a href=""><code>f5aff33</code></a> Fix test failure with pytest 8+ and verbose mode (<a href="">#535</a>)</li>
<li><a href=""><code>adc4187</code></a> Bump actions/setup-python from 5 to 6 in the github-actions group (<a href="">#533</a>)</li>
<li><a href=""><code>95ad570</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#532</a>)</li>
<li><a href=""><code>e696bf0</code></a> Fix standalone mock support (<a href="">#531</a>)</li>
<li><a href=""><code>5b29b03</code></a> Fix gen-release-notes script</li>
<li><a href=""><code>7d22ef4</code></a> Merge pull request <a href="">#528</a> from pytest-dev/release-3.15.0</li>
<li><a href=""><code>90b29f8</code></a> Update CHANGELOG for 3.15.0</li>
<li>Additional commits viewable in <a href="https://github.com/pytest-dev/pytest-mock/compare/v3.14.1...v3.15.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=pytest-mock&package-manager=pip&previous-version=3.14.1&new-version=3.15.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `161e8b71fbee`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.