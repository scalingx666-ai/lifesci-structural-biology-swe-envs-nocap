# Issue

**Title:** Bump proxy-addr from 2.0.7 to 2.0.8 in /viewer-frontend

## Description

Bumps [proxy-addr](https://github.com/jshttp/proxy-addr) from 2.0.7 to 2.0.8.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/jshttp/proxy-addr/releases">proxy-addr's releases</a>.</em></p>
<blockquote>
<h2>2.0.8</h2>
<h2>Important</h2>
<ul>
<li>Fix <a href="https://www.cve.org/CVERecord?id=CVE-2026-90711">CVE-2026-90711</a> (<a href="https://github.com/jshttp/proxy-addr/security/advisories/GHSA-jqcg-44mw-7w3h">GHSA-jqcg-44mw-7w3h</a>)</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>Add OSSF scorecard action by <a href="https://github.com/carpasse"><code>@​carpasse</code></a> in <a href="">jshttp/proxy-addr#27</a></li>
<li>Fix ci pipeline and add missing Node.JS versions by <a href="https://github.com/carpasse"><code>@​carpasse</code></a> in <a href="">jshttp/proxy-addr#26</a></li>
<li>[StepSecurity] Apply security best practices by <a href="https://github.com/step-security-bot"><code>@​step-security-bot</code></a> in <a href="">jshttp/proxy-addr#29</a></li>
<li>build(deps): bump coverallsapp/github-action from 1.2.5 to 2.3.6 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#30</a></li>
<li>build(deps): bump github/codeql-action from 2.23.2 to 3.28.18 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#31</a></li>
<li>build(deps-dev): bump eslint-plugin-import from 2.23.4 to 2.31.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#32</a></li>
<li>build(deps): bump ossf/scorecard-action from 2.0.6 to 2.4.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#33</a></li>
<li>build(deps): bump actions/upload-artifact from 3.1.3 to 4.6.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#35</a></li>
<li>build(deps-dev): bump deep-equal from 1.0.1 to 1.1.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#34</a></li>
<li>build(deps-dev): bump eslint-plugin-markdown from 2.2.0 to 2.2.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#36</a></li>
<li>chore: add funding to package.json by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">jshttp/proxy-addr#40</a></li>
<li>build(deps): bump github/codeql-action from 3.28.18 to 3.29.5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#41</a></li>
<li>build(deps): bump github/codeql-action from 3.29.7 to 3.29.11 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#43</a></li>
<li>build(deps): bump actions/checkout from 3.6.0 to 5.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#42</a></li>
<li>build(deps): bump actions/upload-artifact from 4.6.2 to 5.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#47</a></li>
<li>build(deps): bump github/codeql-action from 3.29.11 to 4.31.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#46</a></li>
<li>build(deps): bump coverallsapp/github-action from 2.3.6 to 2.3.7 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#50</a></li>
<li>build(deps): bump github/codeql-action from 4.31.2 to 4.31.5 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#49</a></li>
<li>build(deps): bump actions/checkout from 5.0.0 to 6.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#48</a></li>
<li>build(deps): bump actions/checkout from 6.0.0 to 6.0.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#56</a></li>
<li>build(deps): bump github/codeql-action from 4.31.5 to 4.32.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#55</a></li>
<li>build(deps): bump github/codeql-action from 4.32.0 to 4.32.4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#57</a></li>
<li>build(deps): bump actions/upload-artifact from 5.0.0 to 7.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#58</a></li>
<li>Fix &quot;arugment&quot; typo in README by <a href="https://github.com/schiwekM"><code>@​schiwekM</code></a> in <a href="">jshttp/proxy-addr#61</a></li>
<li>build(deps): bump github/codeql-action from 4.32.4 to 4.36.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#64</a></li>
<li>build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#63</a></li>
<li>build(deps): bump ossf/scorecard-action from 2.4.2 to 2.4.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#45</a></li>
<li>build(deps-dev): bump eslint-plugin-import from 2.31.0 to 2.32.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">jshttp/proxy-addr#39</a></li>
<li>chore(ci): npm-publish via reusable workflows by <a href="https://github.com/sheplu"><code>@​sheplu</code></a> in <a href="">jshttp/proxy-addr#54</a></li>
<li>refresh CI by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">jshttp/proxy-addr#69</a></li>
<li>fix: typo by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">jshttp/proxy-addr#71</a></li>
<li>Release: 2.0.8 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">jshttp/proxy-addr#70</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/carpasse"><code>@​carpasse</code></a> made their first contribution in <a href="">jshttp/proxy-addr#27</a></li>
<li><a href="https://github.com/step-security-bot"><code>@​step-security-bot</code></a> made their first contribution in <a href="">jshttp/proxy-addr#29</a></li>
<li><a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] made their first contribution in <a href="">jshttp/proxy-addr#30</a></li>
<li><a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> made their first contribution in <a href="">jshttp/proxy-addr#40</a></li>
<li><a href="https://github.com/schiwekM"><code>@​schiwekM</code></a> made their first contribution in <a href="">jshttp/proxy-addr#61</a></li>
<li><a href="https://github.com/sheplu"><code>@​sheplu</code></a> made their first contribution in <a href="">jshttp/proxy-addr#54</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/jshttp/proxy-addr/compare/v2.0.7...v2.0.8">https://github.com/jshttp/proxy-addr/compare/v2.0.7...v2.0.8</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/jshttp/proxy-addr/blob/master/HISTORY.md">proxy-addr's changelog</a>.</em></p>
<blockquote>
<h1>2.0.8</h1>
<ul>
<li>Fix <a href="https://www.cve.org/CVERecord?id=CVE-2026-90711">CVE-2026-90711</a> (<a href="https://github.com/jshttp/proxy-addr/security/advisories/GHSA-jqcg-44mw-7w3h">GHSA-jqcg-44mw-7w3h</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>a11ad82</code></a> 2.0.8 (<a href="">#70</a>)</li>
<li><a href=""><code>780911d</code></a> fix: reject IPv4 trust via mapped IPv6 subnets with a short prefix</li>
<li><a href=""><code>92e103e</code></a> fix(ci): use publised as release trigger event (<a href="">#71</a>)</li>
<li><a href=""><code>3e5ac75</code></a> ci: merge coverage via artifacts, disable fail-fast, add Node.js 23-26 (<a href="">#69</a>)</li>
<li><a href=""><code>4b9db81</code></a> chore(ci): npm-publish via workflows (<a href="">#54</a>)</li>
<li><a href=""><code>655e895</code></a> build(deps-dev): bump eslint-plugin-import from 2.31.0 to 2.32.0 (<a href="">#39</a>)</li>
<li><a href=""><code>50ce4d0</code></a> build(deps): bump ossf/scorecard-action from 2.4.2 to 2.4.3 (<a href="">#45</a>)</li>
<li><a href=""><code>0fd347f</code></a> build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 (<a href="">#63</a>)</li>
<li><a href=""><code>6a517fa</code></a> build(deps): bump github/codeql-action from 4.32.4 to 4.36.0 (<a href="">#64</a>)</li>
<li><a href=""><code>0d45e2a</code></a> Fix &quot;arugment&quot; typo in README (<a href="">#61</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/jshttp/proxy-addr/compare/v2.0.7...v2.0.8">compare view</a></li>
</ul>
</details>
<details>
<summary>Maintainer changes</summary>
<p>This version was pushed to npm by <a href="https://www.npmjs.com/~GitHub%20Actions">GitHub Actions</a>, a new releaser for proxy-addr since your current version.</p>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=proxy-addr&package-manager=npm_and_yarn&previous-version=2.0.7&new-version=2.0.8)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/Acellera/moleculekit/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d22979d67b3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.