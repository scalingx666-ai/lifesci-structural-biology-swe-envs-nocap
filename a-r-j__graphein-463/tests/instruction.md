# Issue

**Title:** Bump virtualenv from 21.5.1 to 21.14.13

## Description

Bumps [virtualenv](https://github.com/pypa/virtualenv) from 21.5.1 to 21.14.13.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/pypa/virtualenv/releases">virtualenv's releases</a>.</em></p>
<blockquote>
<h2>21.14.13</h2>
<h1>Bugfixes - 21.14.13</h1>
<ul>
<li>
<p>Stop bash running commands from <code>--prompt</code> or an environment name containing <code>$(...)</code>, backticks or a backslash
after <code>shopt -s promptvars</code>, <code>set -o posix</code>, or in a child shell that inherits an exported <code>PS1</code>
(GHSA-cx6f-vjhg-g3cc); reported by rozzkml. zsh now draws the prompt from <code>psvar[9]</code>, which is never parsed
as shell syntax.</p>
<p>Write the <code>.venv</code> redirect and the wheel <code>RECORD</code> with exclusive create, so a link planted after the existence
check cannot redirect the write. On POSIX, a read-only <code>.venv</code> redirect that points at a virtualenv is replaced.
(<a href="">#3466</a>)</p>
</li>
</ul>
<p><a href="https://pypi.org/project/virtualenv/21.14.13/">PyPI release</a></p>
<p><strong>Full Changelog</strong>: <a href="https://github.com/pypa/virtualenv/compare/21.14.12...21.14.13">https://github.com/pypa/virtualenv/compare/21.14.12...21.14.13</a></p>
<h2>21.14.12</h2>
<h1>Bugfixes - 21.14.12</h1>
<ul>
<li>
<p>Upgrade embedded wheels:</p>
<ul>
<li>setuptools to <code>84.2.1</code> from <code>84.0.0</code></li>
<li>pip to <code>26.2.2</code> from <code>26.2.1</code> (<a href="">#3452</a>)</li>
</ul>
</li>
</ul>
<h1>Improved Documentation - 21.14.12</h1>
<ul>
<li>Require a pull request news fragment and a matching changelog section before publishing. (<a href="">#3445</a>)</li>
</ul>
<p><a href="https://pypi.org/project/virtualenv/21.14.12/">PyPI release</a></p>
<p><strong>Full Changelog</strong>: <a href="https://github.com/pypa/virtualenv/compare/21.14.11...21.14.12">https://github.com/pypa/virtualenv/compare/21.14.11...21.14.12</a></p>
<h2>21.14.11</h2>
<h1>Bugfixes - 21.14.11</h1>
<ul>
<li>Search all directories supplied by repeated <code>--extra-search-dir</code> options instead of keeping only the last group.
(<a href="">#3440</a>)</li>
<li>On Windows, the app data is now migrated into the nested cache directory instead of the migration failing with a
warning on every run. (<a href="">#3441</a>)</li>
</ul>
<p><a href="https://pypi.org/project/virtualenv/21.14.11/">PyPI release</a></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pypa/virtualenv/blob/main/docs/changelog.rst">virtualenv's changelog</a>.</em></p>
<blockquote>
<h1>Bugfixes - 21.14.13</h1>
<ul>
<li>
<p>Stop bash running commands from <code>--prompt</code> or an environment name containing <code>$(...)</code>, backticks or a backslash
after <code>shopt -s promptvars</code>, <code>set -o posix</code>, or in a child shell that inherits an exported <code>PS1</code>
(GHSA-cx6f-vjhg-g3cc); reported by :user:<code>rozzkml</code>. zsh now draws the prompt from <code>psvar[9]</code>, which is never parsed
as shell syntax.</p>
<p>Write the <code>.venv</code> redirect and the wheel <code>RECORD</code> with exclusive create, so a link planted after the existence
check cannot redirect the write. On POSIX, a read-only <code>.venv</code> redirect that points at a virtualenv is replaced.
(:issue:<code>3466</code>)</p>
</li>
</ul>
<hr />
<p>v21.14.12 (2026-10-21)</p>
<hr />
<h1>Bugfixes - 21.14.12</h1>
<ul>
<li>
<p>Upgrade embedded wheels:</p>
<ul>
<li>setuptools to <code>84.2.1</code> from <code>84.0.0</code></li>
<li>pip to <code>26.2.2</code> from <code>26.2.1</code> (:issue:<code>3452</code>)</li>
</ul>
</li>
</ul>
<h1>Improved Documentation - 21.14.12</h1>
<ul>
<li>Require a pull request news fragment and a matching changelog section before publishing. (:issue:<code>3445</code>)</li>
</ul>
<hr />
<p>v21.14.11 (2026-10-18)</p>
<hr />
<h1>Bugfixes - 21.14.11</h1>
<ul>
<li>Search all directories supplied by repeated <code>--extra-search-dir</code> options instead of keeping only the last group.
(:issue:<code>3440</code>)</li>
<li>On Windows, the app data is now migrated into the nested cache directory instead of the migration failing with a
warning on every run. (:issue:<code>3441</code>)</li>
</ul>
<hr />
<p>v21.14.10 (2026-10-17)</p>
<hr />
<h1>Bugfixes - 21.14.10</h1>
<ul>
<li>Always copy seed packages when app-data is temporary, including when symlink seeding is enabled through an environment
variable or configuration file. Seeded packages remain available after temporary cache cleanup. (:issue:<code>3437</code>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6accbd5</code></a> release 21.14.13</li>
<li><a href=""><code>3598e20</code></a> 🐛 fix(bash): escape the prompt for every PS1 state (<a href="">#3466</a>)</li>
<li><a href=""><code>f6512a5</code></a> release 21.14.12</li>
<li><a href=""><code>b535726</code></a> [pre-commit.ci] pre-commit autoupdate (<a href="">#3455</a>)</li>
<li><a href=""><code>7e32366</code></a> Fix broken pip and code review links in the docs (<a href="">#3460</a>)</li>
<li><a href=""><code>632e56f</code></a> Upgrade embedded pip/setuptools/wheel and CI test tools (<a href="">#3452</a>)</li>
<li><a href=""><code>a8bd1a9</code></a> chore(deps): bump certifi from 2026.7.22 to 2026.10.19 in /tasks (<a href="">#3462</a>)</li>
<li><a href=""><code>c82323b</code></a> chore(deps): bump uv from 0.13.0 to 0.13.4 in /tasks (<a href="">#3461</a>)</li>
<li><a href=""><code>863ae6c</code></a> chore(deps): bump the runtime-dependencies group with 3 updates (<a href="">#3456</a>)</li>
<li><a href=""><code>79537b3</code></a> 👷 ci: pin App token action v3.3.0 (<a href="">#3449</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/virtualenv/compare/21.5.1...21.14.13">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=virtualenv&package-manager=uv&previous-version=21.5.1&new-version=21.14.13)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/a-r-j/graphein/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9bbf3d998e00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.