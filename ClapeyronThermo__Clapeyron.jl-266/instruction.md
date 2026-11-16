# Issue

**Title:** Bump julia-actions/setup-julia from 1 to 2

## Description

Bumps [julia-actions/setup-julia](https://github.com/julia-actions/setup-julia) from 1 to 2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/julia-actions/setup-julia/releases">julia-actions/setup-julia's releases</a>.</em></p>
<blockquote>
<h2>v2.0.0 - Update to Node20</h2>
<h2>What's Changed</h2>
<ul>
<li>update to node20 by <a href="https://github.com/ranocha"><code>@​ranocha</code></a> in <a href="">julia-actions/setup-julia#209</a></li>
</ul>
<p>Note the rationale for the breaking change was discussed in <a href="">julia-actions/setup-julia#209</a></p>
<h3>Dependencies and misc</h3>
<ul>
<li>Bump nock from 13.5.1 to 13.5.4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#224</a></li>
<li>Bump <code>@​types/semver</code> from 7.5.6 to 7.5.8 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#222</a></li>
<li>Bump <code>@​types/node</code> from 20.11.16 to 20.11.30 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#226</a></li>
<li>Bump the version number to <code>2.0.0</code> in <code>package.json</code> and <code>package-lock.json</code> by <a href="https://github.com/DilumAluthge"><code>@​DilumAluthge</code></a> in <a href="">julia-actions/setup-julia#228</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/ranocha"><code>@​ranocha</code></a> made their first contribution in <a href="">julia-actions/setup-julia#209</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/julia-actions/setup-julia/compare/v1.9.6...v2.0.0">https://github.com/julia-actions/setup-julia/compare/v1.9.6...v2.0.0</a></p>
<h2>v1.9.6: Fix Apple Silicon installation</h2>
<h2>What's Changed</h2>
<ul>
<li>Fix the Apple Silicon (macOS <code>aarch64</code> / <code>arm64</code>) URLs for Julia nightly by <a href="https://github.com/benlorenz"><code>@​benlorenz</code></a> in <a href="">julia-actions/setup-julia#220</a></li>
<li>put quotes on readme version examples by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/setup-julia#203</a></li>
</ul>
<h3>Deps &amp; CI</h3>
<ul>
<li>Bump actions/cache from 3 to 4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#215</a></li>
<li>Bump <code>@​types/node</code> from 20.10.6 to 20.11.16 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#213</a></li>
<li>Bump ts-jest from 29.1.1 to 29.1.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#212</a></li>
<li>Bump nock from 13.4.0 to 13.5.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#211</a></li>
<li>Bump semver from 7.5.4 to 7.6.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#217</a></li>
<li>CI: Increase the Dependabot &quot;number of open PRs&quot; limit by <a href="https://github.com/DilumAluthge"><code>@​DilumAluthge</code></a> in <a href="">julia-actions/setup-julia#218</a></li>
<li>Bump prettier from 3.1.1 to 3.2.5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#216</a></li>
<li>Bump <code>@​types/jest</code> from 29.5.11 to 29.5.12 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a> in <a href="">julia-actions/setup-julia#210</a></li>
<li>1.9.6 and compat bump for node semver package by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/setup-julia#221</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/benlorenz"><code>@​benlorenz</code></a> made their first contribution in <a href="">julia-actions/setup-julia#220</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/julia-actions/setup-julia/compare/v1.9.5...v1.9.6">https://github.com/julia-actions/setup-julia/compare/v1.9.5...v1.9.6</a></p>
<h2>v1.9.5: Maintain mtime of julia build to avoid re-precompilation</h2>
<p>A big part of fixing <a href="">JuliaLang/julia#50667</a> for julia &lt;1.11 as maintaining the mtime of the julia source files means cached <code>/compiled</code> caches won't be invalidated in new runs where julia has been reinstalled.</p>
<h2>What's Changed</h2>
<ul>
<li>add test for julia install and mtime maintenance by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/setup-julia#200</a></li>
<li>extract julia directly to tool path to maintain mtimes by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/setup-julia#196</a></li>
<li>v1.9.5 by <a href="https://github.com/IanButterworth"><code>@​IanButterworth</code></a> in <a href="">julia-actions/setup-julia#201</a></li>
</ul>
<h3>Dep updates</h3>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f225878</code></a> Add production dependencies &amp; build</li>
<li><a href=""><code>b96a572</code></a> Bump the version number to <code>2.0.0</code> in <code>package.json</code> and <code>package-lock.json</code> ...</li>
<li><a href=""><code>437a175</code></a> update to node20 (<a href="">#209</a>)</li>
<li><a href=""><code>e9d953d</code></a> Bump <code>@​types/node</code> from 20.11.16 to 20.11.30 (<a href="">#226</a>)</li>
<li><a href=""><code>4190528</code></a> Bump <code>@​types/semver</code> from 7.5.6 to 7.5.8 (<a href="">#222</a>)</li>
<li><a href=""><code>9acd04f</code></a> Bump nock from 13.5.1 to 13.5.4 (<a href="">#224</a>)</li>
<li>See full diff in <a href="https://github.com/julia-actions/setup-julia/compare/v1...v2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=julia-actions/setup-julia&package-manager=github_actions&previous-version=1&new-version=2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb2e3dbcb850`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.