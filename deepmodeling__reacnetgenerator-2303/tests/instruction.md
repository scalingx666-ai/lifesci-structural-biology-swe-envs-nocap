# Issue

**Title:** build(deps): bump codecov/codecov-action from 4 to 5

## Description

Bumps [codecov/codecov-action](https://github.com/codecov/codecov-action) from 4 to 5.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/codecov/codecov-action/releases">codecov/codecov-action's releases</a>.</em></p>
<blockquote>
<h2>v5.0.0</h2>
<h2>v5 Release</h2>
<p><code>v5</code> of the Codecov GitHub Action will use the <a href="https://github.com/codecov/wrapper">Codecov Wrapper</a> to encapsulate the <a href="https://github.com/codecov/codecov-cli">CLI</a>. This will help ensure that the Action gets updates quicker.</p>
<h3>Migration Guide</h3>
<p>The <code>v5</code> release also coincides with the opt-out feature for tokens for public repositories. In the <code>Global Upload Token</code> section of the settings page of an organization in codecov.io, you can set the ability for Codecov to receive a coverage reports from any source. This will allow contributors or other members of a repository to upload without needing access to the Codecov token. For more details see <a href="https://docs.codecov.com/docs/codecov-tokens#uploading-without-a-token">how to upload without a token</a>.</p>
<blockquote>
<p>[!WARNING]<br />
<strong>The following arguments have been changed</strong></p>
<ul>
<li><code>file</code> (this has been deprecated in favor of <code>files</code>)</li>
<li><code>plugin</code> (this has been deprecated in favor of <code>plugins</code>)</li>
</ul>
</blockquote>
<p>The following arguments have been added:</p>
<ul>
<li><code>binary</code></li>
<li><code>gcov_args</code></li>
<li><code>gcov_executable</code></li>
<li><code>gcov_ignore</code></li>
<li><code>gcov_include</code></li>
<li><code>report_type</code></li>
<li><code>skip_validation</code></li>
<li><code>swift_project</code></li>
</ul>
<p>You can see their usage in the <code>action.yml</code> <a href="https://github.com/codecov/codecov-action/blob/main/action.yml">file</a>.</p>
<h2>What's Changed</h2>
<ul>
<li>chore(deps): bump to eslint9+ and remove eslint-config-google by <a href="https://github.com/thomasrockhu-codecov"><code>@​thomasrockhu-codecov</code></a> in <a href="">codecov/codecov-action#1591</a></li>
<li>build(deps-dev): bump <code>@​octokit/webhooks-types</code> from 7.5.1 to 7.6.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1595</a></li>
<li>build(deps-dev): bump typescript from 5.6.2 to 5.6.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1604</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/parser</code> from 8.8.0 to 8.8.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1601</a></li>
<li>build(deps): bump <code>@​actions/core</code> from 1.11.0 to 1.11.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1597</a></li>
<li>build(deps): bump github/codeql-action from 3.26.9 to 3.26.11 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1596</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.8.0 to 8.8.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1600</a></li>
<li>build(deps-dev): bump eslint from 9.11.1 to 9.12.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1598</a></li>
<li>build(deps): bump github/codeql-action from 3.26.11 to 3.26.12 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1609</a></li>
<li>build(deps): bump actions/checkout from 4.2.0 to 4.2.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1608</a></li>
<li>build(deps): bump actions/upload-artifact from 4.4.0 to 4.4.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1607</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/parser</code> from 8.8.1 to 8.9.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1612</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.8.1 to 8.9.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1611</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.9.0 to 8.10.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1615</a></li>
<li>build(deps-dev): bump eslint from 9.12.0 to 9.13.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1618</a></li>
<li>build(deps): bump github/codeql-action from 3.26.12 to 3.26.13 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1617</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/parser</code> from 8.9.0 to 8.10.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1614</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.10.0 to 8.11.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1620</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/parser</code> from 8.10.0 to 8.11.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1619</a></li>
<li>build(deps-dev): bump <code>@​types/jest</code> from 29.5.13 to 29.5.14 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1622</a></li>
<li>build(deps): bump actions/checkout from 4.2.1 to 4.2.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1625</a></li>
<li>build(deps): bump github/codeql-action from 3.26.13 to 3.27.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1624</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.11.0 to 8.12.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1626</a></li>
<li>build(deps-dev): bump <code>@​typescript-eslint/eslint-plugin</code> from 8.12.1 to 8.12.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">codecov/codecov-action#1629</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/codecov/codecov-action/blob/main/CHANGELOG.md">codecov/codecov-action's changelog</a>.</em></p>
<blockquote>
<h2>4.0.0-beta.2</h2>
<h3>Fixes</h3>
<ul>
<li><a href="">#1085</a> not adding -n if empty to do-upload command</li>
</ul>
<h2>4.0.0-beta.1</h2>
<p><code>v4</code> represents a move from the <a href="https://github.com/codecov/uploader">universal uploader</a> to the <a href="https://github.com/codecov/codecov-cli">Codecov CLI</a>. Although this will unlock new features for our users, the CLI is not yet at feature parity with the universal uploader.</p>
<h3>Breaking Changes</h3>
<ul>
<li>No current support for <code>aarch64</code> and <code>alpine</code> architectures.</li>
<li>Tokenless uploading is unsuported</li>
<li>Various arguments to the Action have been removed</li>
</ul>
<h2>3.1.4</h2>
<h3>Fixes</h3>
<ul>
<li><a href="">#967</a> Fix typo in README.md</li>
<li><a href="">#971</a> fix: add back in working dir</li>
<li><a href="">#969</a> fix: CLI option names for uploader</li>
</ul>
<h3>Dependencies</h3>
<ul>
<li><a href="">#970</a> build(deps-dev): bump <code>@​types/node</code> from 18.15.12 to 18.16.3</li>
<li><a href="">#979</a> build(deps-dev): bump <code>@​types/node</code> from 20.1.0 to 20.1.2</li>
<li><a href="">#981</a> build(deps-dev): bump <code>@​types/node</code> from 20.1.2 to 20.1.4</li>
</ul>
<h2>3.1.3</h2>
<h3>Fixes</h3>
<ul>
<li><a href="">#960</a> fix: allow for aarch64 build</li>
</ul>
<h3>Dependencies</h3>
<ul>
<li><a href="">#957</a> build(deps-dev): bump jest-junit from 15.0.0 to 16.0.0</li>
<li><a href="">#958</a> build(deps): bump openpgp from 5.7.0 to 5.8.0</li>
<li><a href="">#959</a> build(deps-dev): bump <code>@​types/node</code> from 18.15.10 to 18.15.12</li>
</ul>
<h2>3.1.2</h2>
<h3>Fixes</h3>
<ul>
<li><a href="">#718</a> Update README.md</li>
<li><a href="">#851</a> Remove unsupported path_to_write_report argument</li>
<li><a href="">#898</a> codeql-analysis.yml</li>
<li><a href="">#901</a> Update README to contain correct information - inputs and negate feature</li>
<li><a href="">#955</a> fix: add in all the extra arguments for uploader</li>
</ul>
<h3>Dependencies</h3>
<ul>
<li><a href="">#819</a> build(deps): bump openpgp from 5.4.0 to 5.5.0</li>
<li><a href="">#835</a> build(deps): bump node-fetch from 3.2.4 to 3.2.10</li>
<li><a href="">#840</a> build(deps): bump ossf/scorecard-action from 1.1.1 to 2.0.4</li>
<li><a href="">#841</a> build(deps): bump <code>@​actions/core</code> from 1.9.1 to 1.10.0</li>
<li><a href="">#843</a> build(deps): bump <code>@​actions/github</code> from 5.0.3 to 5.1.1</li>
<li><a href="">#869</a> build(deps): bump node-fetch from 3.2.10 to 3.3.0</li>
<li><a href="">#872</a> build(deps-dev): bump jest-junit from 13.2.0 to 15.0.0</li>
<li><a href="">#879</a> build(deps): bump decode-uri-component from 0.2.0 to 0.2.2</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>5c47607</code></a> fix: override commit and pr values for PR cases (<a href="">#1657</a>)</li>
<li><a href=""><code>3b1354a</code></a> chore(release): 5.0.1 (<a href="">#1656</a>)</li>
<li><a href=""><code>2e2a9c6</code></a> fix: update tokenless branch logic (<a href="">#1650</a>)</li>
<li><a href=""><code>cfc521b</code></a> Update README.md</li>
<li><a href=""><code>0642541</code></a> fix: use marketplace v5 badge (<a href="">#1646</a>)</li>
<li><a href=""><code>9688725</code></a> Update README.md</li>
<li><a href=""><code>2112eae</code></a> chore(deps): bump wrapper to 0.0.23 (<a href="">#1644</a>)</li>
<li><a href=""><code>193421c</code></a> fixL use the correct source (<a href="">#1642</a>)</li>
<li><a href=""><code>6018df7</code></a> fix: update container builds (<a href="">#1640</a>)</li>
<li><a href=""><code>eff1a64</code></a> fix: add missing vars (<a href="">#1638</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/codecov/codecov-action/compare/v4...v5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=codecov/codecov-action&package-manager=github_actions&previous-version=4&new-version=5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `34843149fe5d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.