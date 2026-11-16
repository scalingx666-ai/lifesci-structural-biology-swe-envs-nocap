# Issue

**Title:** Bump JuliaRegistries/TagBot from 1.10 to 1.14

## Description

Bumps [JuliaRegistries/TagBot](https://github.com/JuliaRegistries/TagBot) from 1.10 to 1.14.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/JuliaRegistries/TagBot/releases">JuliaRegistries/TagBot's releases</a>.</em></p>
<blockquote>
<h2>v1.14.0</h2>
<p>You can now tell TagBot to create draft releases instead of full Git tag + GitHub releases. (<a href="">#207</a>)</p>
<h2>v1.13.1</h2>
<p>Fixed GPG tag signing. (<a href="">#197</a>)</p>
<h2>v1.13.0</h2>
<p>This release brings much better support for accessing private registries via a read-only deploy key. See <a href="https://github.com/JuliaRegistries/TagBot#custom-registries">custom registries</a> for more details.</p>
<h2>v1.12.8</h2>
<p>Nothing that affects users in this release, except for some behind-the-scenes action:</p>
<p>Old versions of TagBot have been corrected to run the corresponding TagBot Docker image, and <code>1.MINOR</code> tags now exist for all <code>1.x</code> versions. That means that if you wanted to stay on TagBot <code>1.11.x</code> for whatever reason, you could now do so by using <code>JuliaRegistries/TagBot@v1.11</code>. Previously, any <code>1.MINOR.PATCH</code> version would just get you the latest <code>1.x</code> Docker image. This shouldn't change anything for the vast majority of users, and I don't recommend nor support old versions, but they're available to you now.</p>
<h2>v1.12.7</h2>
<p>A warning is now printed if you're running TagBot as a cron job. Please update your workflows as described <a href="https://discourse.julialang.org/t/ann-required-updates-to-tagbot-yml/49249">here</a>!</p>
<h2>v1.12.6</h2>
<p>Key decoding was mostly fixed last time, and now it should be completely fixed! (<a href="">#182</a>)</p>
<h2>v1.12.5</h2>
<p>KEY DECODING IS (probably) FIXED!!! (<a href="">#180</a>)</p>
<h2>v1.12.4</h2>
<p>Yep, I broke everything. This might unbreak it.</p>
<h2>v1.12.3</h2>
<p>You can now add inputs to your <a href="https://github.blog/changelog/2020-07-06-github-actions-manual-triggers-with-workflow_dispatch/"><code>workflow_dispatch</code> trigger</a>. You can use this feature to override certain config options for just a single manual TagBot run. For example, perhaps you've just installed TagBot on a package repo with a couple of versions that were registered a week ago, and those versions do not yet have Git tags/GitHub releases. TagBot will not fill in those releases for you, because they are older than the default lookback.</p>
<p>You could edit your <code>TagBot.yml</code> like so:</p>
<pre lang="yml"><code>name: TagBot
on:
  issue_comment: # ...
  workflow_dispatch:
    inputs:  # NEW!
      lookback:
jobs: # ...
</code></pre>
<p>Then, when you trigger a manual TagBot run, you can enter the value <code>14</code> for <code>lookback</code> which will override the default and cause TagBot to look for new versions registered within the last two weeks.</p>
<p>You can override any input in the same manner.</p>
<hr />
<p>Alternatively, this might just break everything. Fingers crossed.</p>
<h2>v1.12.2</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>4dfecaa</code></a> Release 1.14.1 (<a href="">#214</a>)</li>
<li><a href=""><code>afbc9c3</code></a> Add <code>skip changelog</code> to ignore (<a href="">#213</a>)</li>
<li><a href=""><code>eeb77a6</code></a> Compare example workflows in CI (<a href="">#210</a>)</li>
<li><a href=""><code>d04aea4</code></a> Release 1.14.0 (<a href="">#209</a>)</li>
<li><a href=""><code>70ce6c8</code></a> Bump jszip from 3.4.0 to 3.7.1 (<a href="">#208</a>)</li>
<li><a href=""><code>55a0e01</code></a> Support draft releases (<a href="">#207</a>)</li>
<li><a href=""><code>9c6c508</code></a> Bump lodash from 4.17.19 to 4.17.21 (<a href="">#203</a>)</li>
<li><a href=""><code>bb54f2e</code></a> Use PAT in examples for <code>dispatch</code> (<a href="">#199</a>)</li>
<li><a href=""><code>e09d435</code></a> Release 1.13.1 (<a href="">#198</a>)</li>
<li><a href=""><code>a157650</code></a> Fix GPG signing (<a href="">#197</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/JuliaRegistries/TagBot/compare/v1.10...v1.14">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=JuliaRegistries/TagBot&package-manager=github_actions&previous-version=1.10&new-version=1.14)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `16931dad83a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.