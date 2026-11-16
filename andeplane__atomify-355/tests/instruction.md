# Issue

**Title:** chore(deps): bump idna from 3.11 to 3.15 in /backend

## Description

Bumps [idna](https://github.com/kjd/idna) from 3.11 to 3.15.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/kjd/idna/blob/master/HISTORY.md">idna's changelog</a>.</em></p>
<blockquote>
<h2>3.15 (2026-05-12)</h2>
<ul>
<li>Enforce DNS-length cap on individual labels early in <code>check_label</code>,
short-circuiting contextual-rule processing for oversized input
while staying compatible with UTS 46 usage.</li>
<li>Tidy core helpers: hoist bidi category sets to module-level
frozensets (avoiding per-codepoint list construction), simplify
length checks, and reuse the shared <code>_unicode_dots_re</code> from
<code>idna.core</code> in the codec module.</li>
<li>Use <code>raise ... from err</code> for proper exception chaining and
switch internal string formatting to f-strings.</li>
<li>Allow <code>flit_core</code> 4.x in the build backend.</li>
<li>Expand the ruff lint set (flake8-bugbear, flake8-simplify,
pyupgrade, perflint) and apply the surfaced fixes; pin lint CI
to Python 3.14.</li>
<li>Add Dependabot configuration for GitHub Actions.</li>
<li>Convert README and HISTORY from reStructuredText to Markdown.</li>
<li>Reference CVE-2026-45409 for the 3.14 advisory in place of the
initial GHSA identifier.</li>
</ul>
<p>Thanks to Felix Yan, Stan Ulbrych, and metsw24-max for
contributions to this release.</p>
<h2>3.14 (2026-05-10)</h2>
<ul>
<li>Removed opportunity to process long inputs into quadratic
time by rejecting oversize inputs up-front. Closes a bypass
of the CVE-2024-3651 mitigation. [CVE-2026-45409]</li>
</ul>
<p>Thanks to Stan Ulbrych for reporting the issue.</p>
<h2>3.13 (2026-04-22)</h2>
<ul>
<li>Correct classification error for codepoint U+A7F1</li>
</ul>
<h2>3.12 (2026-04-21)</h2>
<ul>
<li>Update to Unicode 17.0.0.</li>
<li>Issue a deprecation warning for the transitional argument.</li>
<li>Added lazy-loading to provide some performance improvements.</li>
<li>Removed vestiges of code related to Python 2 support, including
segmentation of data structures specific to Jython.</li>
</ul>
<p>Thanks to Rodrigo Nogueira for contributions to this release.</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>af30a09</code></a> Release 3.15</li>
<li><a href=""><code>30314d4</code></a> Pre-release 3.15rc0</li>
<li><a href=""><code>05d4b21</code></a> Merge pull request <a href="">#237</a> from kjd/convert-docs-to-markdown</li>
<li><a href=""><code>2987fdb</code></a> Convert README and HISTORY from reStructuredText to Markdown</li>
<li><a href=""><code>59fa800</code></a> Merge pull request <a href="">#236</a> from kjd/dependabot/github_actions/actions-f3e34333ea</li>
<li><a href=""><code>def6983</code></a> Merge branch 'master' into dependabot/github_actions/actions-f3e34333ea</li>
<li><a href=""><code>bbd8004</code></a> Merge pull request <a href="">#234</a> from StanFromIreland/patch-1</li>
<li><a href=""><code>edd07c0</code></a> Bump github/codeql-action from 3.35.2 to 4.35.2 in the actions group</li>
<li><a href=""><code>5557db0</code></a> Merge branch 'master' into patch-1</li>
<li><a href=""><code>f11746c</code></a> Merge pull request <a href="">#235</a> from StanFromIreland/patch-2</li>
<li>Additional commits viewable in <a href="https://github.com/kjd/idna/compare/v3.11...v3.15">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=idna&package-manager=uv&previous-version=3.11&new-version=3.15)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.