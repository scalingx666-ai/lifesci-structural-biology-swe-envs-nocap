# Issue

**Title:** build(deps): bump magnific-popup from 1.1.0 to 1.2.0 in /reacnetgenerator/static/webpack

## Description

Bumps [magnific-popup](https://github.com/dimsemenov/Magnific-Popup) from 1.1.0 to 1.2.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/dimsemenov/Magnific-Popup/releases">magnific-popup's releases</a>.</em></p>
<blockquote>
<h2>1.2.0</h2>
<p>This update fixes jQuery deprecated functions and potential security vulnerabilities if you aren't fully sanitizing user input (for example, if your users can create HTML elements with attributes that contain non-sanitized HTML).</p>
<ul>
<li>Updated functions that are deprecated by jQuery 3.7.1+</li>
<li>Added options <code>allowHTMLInStatusIndicator</code>, <code>allowHTMLInTemplate</code> that disable HTML within the loading indicator and fields like image title. Options are disabled by default (by default HTML is not allowed). If you want to make it work as before enable these:</li>
</ul>
<pre lang="js"><code>$('.gallery').magnificPopup({
  allowHTMLInStatusIndicator: true,
  allowHTMLInTemplate: true,
  // ...
});
</code></pre>
<p>You can grab the latest version from <code>dist/</code> directory <a href="https://github.com/dimsemenov/Magnific-Popup/tree/master/dist">https://github.com/dimsemenov/Magnific-Popup/tree/master/dist</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>45dd72c</code></a> Fix jQuery focus() deprecation and rebuild 1.2.0</li>
<li><a href=""><code>31eb9a7</code></a> 1.2.0 build</li>
<li><a href=""><code>f77d6d5</code></a> build/docs upd</li>
<li><a href=""><code>d9fb917</code></a> Fix jQuery deprecation and disable HTML in fields by default</li>
<li><a href=""><code>e760f7e</code></a> lint</li>
<li><a href=""><code>af27141</code></a> update packages</li>
<li><a href=""><code>c5cbb78</code></a> Update README.md</li>
<li><a href=""><code>70a5d11</code></a> Merge pull request <a href="">#1175</a> from joloco/master</li>
<li><a href=""><code>a72c3c3</code></a> Update gallery.js</li>
<li><a href=""><code>473853b</code></a> Update gallery.js</li>
<li>Additional commits viewable in <a href="https://github.com/dimsemenov/Magnific-Popup/compare/1.1.0...1.2.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=magnific-popup&package-manager=npm_and_yarn&previous-version=1.1.0&new-version=1.2.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b102fc1ca2c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.