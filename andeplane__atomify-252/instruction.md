# Issue

**Title:** chore(deps): bump @testing-library/react from 13.4.0 to 15.0.7

## Description

Bumps [@testing-library/react](https://github.com/testing-library/react-testing-library) from 13.4.0 to 15.0.7.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/testing-library/react-testing-library/releases"><code>@​testing-library/react</code>'s releases</a>.</em></p>
<blockquote>
<h2>v15.0.7</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.6...v15.0.7">15.0.7</a> (2024-05-07)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Ensure <code>act</code> is not <code>any</code> when <code>React.act</code> is not declared (<a href="">#1323</a>) (<a href="">c1f2957</a>)</li>
</ul>
<h2>v15.0.6</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.5...v15.0.6">15.0.6</a> (2024-05-01)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>export new act when available (<a href="">#1319</a>) (<a href="">b6e59f7</a>)</li>
</ul>
<h2>v15.0.5</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.4...v15.0.5">15.0.5</a> (2024-04-26)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Stop restricting <code>container</code> option based on <code>hydrate</code> (<a href="">#1313</a>) (<a href="">d143f46</a>)</li>
</ul>
<h2>v15.0.4</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.3...v15.0.4">15.0.4</a> (2024-04-23)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Ensure <code>renderHook</code> options extend options for <code>render</code> (<a href="">#1308</a>) (<a href="">48282c2</a>)</li>
</ul>
<h2>v15.0.3</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.2...v15.0.3">15.0.3</a> (2024-04-23)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Don't raise TypeScript errors when hydating <code>document</code> (<a href="">#1304</a>) (<a href="">067d0c6</a>)</li>
</ul>
<h2>v15.0.2</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.1...v15.0.2">15.0.2</a> (2024-04-13)</h2>
<h3>Bug Fixes</h3>
<ul>
<li>Improve <code>legacyRoot</code> error message (<a href="">#1301</a>) (<a href="">c63b873</a>)</li>
</ul>
<h2>v15.0.1</h2>
<h2><a href="https://github.com/testing-library/react-testing-library/compare/v15.0.0...v15.0.1">15.0.1</a> (2024-04-11)</h2>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>c1f2957</code></a> fix: Ensure <code>act</code> is not <code>any</code> when <code>React.act</code> is not declared (<a href="">#1323</a>)</li>
<li><a href=""><code>b6e59f7</code></a> fix: export new act when available (<a href="">#1319</a>)</li>
<li><a href=""><code>f6a1677</code></a> chore: Adjust tests to workaround 18.3.0 bug (<a href="">#1315</a>)</li>
<li><a href=""><code>d143f46</code></a> fix: Stop restricting <code>container</code> option based on <code>hydrate</code> (<a href="">#1313</a>)</li>
<li><a href=""><code>48282c2</code></a> fix: Ensure <code>renderHook</code> options extend options for <code>render</code> (<a href="">#1308</a>)</li>
<li><a href=""><code>067d0c6</code></a> fix: Don't raise TypeScript errors when hydating <code>document</code> (<a href="">#1304</a>)</li>
<li><a href=""><code>c63b873</code></a> fix: Improve <code>legacyRoot</code> error message (<a href="">#1301</a>)</li>
<li><a href=""><code>1645d21</code></a> fix: Stop using nullish coalescing (<a href="">#1299</a>)</li>
<li><a href=""><code>787cb85</code></a> Release: 15.0.0 (<a href="">#1295</a>)</li>
<li><a href=""><code>9c4a46d</code></a> feat: Add support for React 19 Canary (<a href="">#1294</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/testing-library/react-testing-library/compare/v13.4.0...v15.0.7">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=@testing-library/react&package-manager=npm_and_yarn&previous-version=13.4.0&new-version=15.0.7)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3e14e001c74e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.