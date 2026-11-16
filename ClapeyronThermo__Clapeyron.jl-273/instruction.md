# Issue

**Title:** Bump julia-actions/cache from 1 to 2

## Description

Bumps [julia-actions/cache](https://github.com/julia-actions/cache) from 1 to 2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/julia-actions/cache/releases">julia-actions/cache's releases</a>.</em></p>
<blockquote>
<h2>v2.0.0</h2>
<h2>Breaking Changes ⚠️</h2>
<p><code>v2.0.0</code> requires <code>node20</code>. This is a breaking change, because <code>node20</code> <a href="https://github.blog/changelog/2024-03-07-github-actions-all-actions-will-run-on-node20-instead-of-node16-by-default/">does not support</a> the following operating systems:</p>
<ul>
<li>Red Hat Enterprise Linux 7</li>
<li>CentOS 7</li>
<li>Oracle Linux 7</li>
<li>Debian 9</li>
<li>Ubuntu 16.04</li>
<li>Linux Mint 18</li>
<li>openSUSE 15</li>
<li>SUSE Enterprise Linux (SLES) 12 SP2</li>
<li>Windows 7 64-bit</li>
<li>Windows 8.1 64-bit</li>
</ul>
<p>Therefore, if you are using self-hosted runners on one of the above operating systems, you won't be able to run <code>v2</code> of this action.</p>
<p>In contrast, <code>v1</code> of this action uses <code>node16</code>.</p>
<h2>What's Changed</h2>
<ul>
<li>fix: Attempt to install jq on all runners by <a href="https://github.com/musoke"><code>@​musoke</code></a> in <a href="">julia-actions/cache#105</a></li>
<li>Pin third party action to hash by <a href="https://github.com/SaschaMann"><code>@​SaschaMann</code></a> in <a href="">julia-actions/cache#106</a></li>
<li>Mention why the extra permissions are required by <a href="https://github.com/rikhuijzer"><code>@​rikhuijzer</code></a> in <a href="">julia-actions/cache#108</a></li>
<li>More accurate info about GitHub cache retion policy by <a href="https://github.com/giordano"><code>@​giordano</code></a> in <a href="">julia-actions/cache#111</a></li>
<li>Only run Dependabot once per month, but increase the PR limit by <a href="https://github.com/DilumAluthge"><code>@​DilumAluthge</code></a> in <a href="">julia-actions/cache#115</a></li>
<li>Update actions/cache to v3.3.3 by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/cache#121</a></li>
<li>Bump julia-actions/setup-julia from 1 to 2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#116</a></li>
<li>Bump actions/checkout from 4.1.1 to 4.1.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#118</a></li>
<li>Bump pyTooling/Actions from 0.4.6 to 1.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#117</a></li>
<li>update setup-julia to v2 in readme by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/cache#124</a></li>
<li>Bump actions/checkout from 4.1.2 to 4.1.4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#126</a></li>
<li>Bump pyTooling/Actions from 1.0.1 to 1.0.5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#127</a></li>
<li>Bump actions/cache from 3.3.3 to 4.0.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/cache#123</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/musoke"><code>@​musoke</code></a> made their first contribution in <a href="">julia-actions/cache#105</a></li>
<li><a href="https://github.com/giordano"><code>@​giordano</code></a> made their first contribution in <a href="">julia-actions/cache#111</a></li>
<li><a href="https://github.com/DilumAluthge"><code>@​DilumAluthge</code></a> made their first contribution in <a href="">julia-actions/cache#115</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/julia-actions/cache/compare/v1.5.2...v2.0.0">https://github.com/julia-actions/cache/compare/v1.5.2...v2.0.0</a></p>
<h2>v1.5.2: Cache tidy fixes. Existing registry fix.</h2>
<h2>What's Changed</h2>
<ul>
<li>Delete cache entries only on the workflow branch by <a href="https://github.com/omus"><code>@​omus</code></a> in <a href="">julia-actions/cache#97</a></li>
<li>Test cache action against Julia 1.0 and nightly by <a href="https://github.com/omus"><code>@​omus</code></a> in <a href="">julia-actions/cache#101</a></li>
<li>Avoid corrupting existing cloned Julia registries by <a href="https://github.com/omus"><code>@​omus</code></a> in <a href="">julia-actions/cache#102</a></li>
<li>Pass cache-name between save/restore jobs by <a href="https://github.com/omus"><code>@​omus</code></a> in <a href="">julia-actions/cache#103</a></li>
<li>make depot if not restored by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/cache#91</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d48542b</code></a> Bump actions/cache from 3.3.3 to 4.0.2 (<a href="">#123</a>)</li>
<li><a href=""><code>caa6556</code></a> Bump pyTooling/Actions from 1.0.1 to 1.0.5 (<a href="">#127</a>)</li>
<li><a href=""><code>1c20782</code></a> Bump actions/checkout from 4.1.2 to 4.1.4 (<a href="">#126</a>)</li>
<li><a href=""><code>4b23ab7</code></a> update setup-julia to v2 in readme (<a href="">#124</a>)</li>
<li><a href=""><code>cc87ef3</code></a> Bump pyTooling/Actions from 0.4.6 to 1.0.1 (<a href="">#117</a>)</li>
<li><a href=""><code>c363897</code></a> Bump actions/checkout from 4.1.1 to 4.1.2 (<a href="">#118</a>)</li>
<li><a href=""><code>1b0706c</code></a> Bump julia-actions/setup-julia from 1 to 2 (<a href="">#116</a>)</li>
<li><a href=""><code>8b63b4a</code></a> Update actions/cache to v3.3.3 (<a href="">#121</a>)</li>
<li><a href=""><code>0413f3b</code></a> Only run Dependabot once per month, but increase the PR limit (<a href="">#115</a>)</li>
<li><a href=""><code>e8521d4</code></a> More accurate info about GitHub cache retion policy (<a href="">#111</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/julia-actions/cache/compare/v1...v2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=julia-actions/cache&package-manager=github_actions&previous-version=1&new-version=2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e619e1b9a4c3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.