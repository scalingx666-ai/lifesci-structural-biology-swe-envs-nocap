# Issue

**Title:** build(deps): bump animejs from 3.2.2 to 4.2.2 in /reacnetgenerator/static/webpack

## Description

Bumps [animejs](https://github.com/juliangarnier/anime) from 3.2.2 to 4.2.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/juliangarnier/anime/releases">animejs's releases</a>.</em></p>
<blockquote>
<h2>v4.2.2</h2>
<h2>Fixes</h2>
<ul>
<li><strong>SVG</strong>
<ul>
<li><code>createMotionPath()</code>: Fix a bug introduced in <code>v4.2.1</code> that wrapped the target back to 0 when reaching 1 (<a href="">#1104</a>
)</li>
</ul>
</li>
</ul>
<h2>v4.2.1</h2>
<h2>New features</h2>
<ul>
<li><strong>SVG</strong>
<ul>
<li><code>createMotionPath()</code>: Add an offset parameter (<a href="">#1037</a>) (<a href="https://github.com/TheHyrox"><code>@​TheHyrox</code></a>)</li>
</ul>
</li>
<li><strong>Draggable</strong>
<ul>
<li><code>createDraggable()</code>: Add a <code>dragThreshold</code> parameter (<a href="">#1091</a>) (<a href="https://github.com/craig-jennings"><code>@​craig-jennings</code></a>)</li>
</ul>
</li>
</ul>
<h2>Changes</h2>
<ul>
<li><strong>Timer</strong>, <strong>Animation</strong>, <strong>Timeline</strong>
<ul>
<li><code>.reset(softReset)</code>: The <code>softReset</code> parameter type is now a <code>Boolean</code> instead of an int</li>
</ul>
</li>
<li><strong>Draggable</strong>
<ul>
<li><code>createDraggable()</code>: The drag threshold is now 3px with a mouse and 7px with touch instead of 3px everywhere</li>
</ul>
</li>
</ul>
<h2>Fixes</h2>
<ul>
<li><strong>onScroll</strong>
<ul>
<li>Fix wrong target offsets calculation when container is scaled (<a href="">#1098</a>) (<a href="https://github.com/sxnb"><code>@​sxnb</code></a>)</li>
</ul>
</li>
<li><strong>Types</strong>
<ul>
<li>Fix await <code>animate()</code> throwing Typescript error (<a href="">#1043</a>)</li>
</ul>
</li>
</ul>
<h2>Docs</h2>
<ul>
<li>Every demos can now be edited on CodePen</li>
<li>Added <code>.reset()</code> chapters</li>
</ul>
<h2>v4.2.0</h2>
<h2>Breaking Changes</h2>
<ul>
<li><strong>Utils</strong>
<ul>
<li>Remove <code>interpolate()</code> (use the simplified <code>lerp()</code> instead)</li>
<li>Remove the clock parameter from <code>lerp()</code> (use the framerate dependent damping function <code>damp()</code> instead)</li>
<li>Setting a CSS variable using <code>utils.set()</code> now computes the variable value instead of setting the var name. To set the variable name without conversion, use a function-based value (<code>x: () =&gt; var(--value)</code>) or use the native <code>element.style.setProperty('--value')</code></li>
</ul>
</li>
<li><strong>Easings</strong>
<ul>
<li><code>linear()</code>, <code>irregular()</code>, <code>steps()</code> and <code>cubicBezier()</code> have been removed from the core and must be imported separately</li>
</ul>
</li>
</ul>
<h2>New Features</h2>
<ul>
<li><strong>API</strong>
<ul>
<li>All modules can now be imported individually with subpaths:</li>
</ul>
</li>
</ul>
<pre lang="js"><code>import { animate } from 'animejs/animation';
import { createTimer } from 'animejs/timer';
import { createTimeline } from 'animejs/timeline';
import { createAnimatable } from 'animejs/animatable';
import { createDraggable } from 'animejs/draggable';
import { createScope } from 'animejs/scope';
import { engine } from 'animejs/engine';
import * as events from 'animejs/events';
&lt;/tr&gt;&lt;/table&gt;
</code></pre>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ae41389</code></a> v4.2.2</li>
<li><a href=""><code>1bfdb09</code></a> v4.2.1</li>
<li><a href=""><code>d91d3cf</code></a> Merge pull request <a href="">#1079</a> from AdeboyeDN/AdeboyeDN-feat/error-for-invalid-morp...</li>
<li><a href=""><code>5c6509d</code></a> Keep Callback and promise types, just remove nullify then on this <a href="">#1043</a> <a href="">#1082</a></li>
<li><a href=""><code>befebe7</code></a> Merge pull request <a href="">#1091</a> from craig-jennings/craig/add-drag-threshold-parameter</li>
<li><a href=""><code>0135223</code></a> Set default touch dragTreshold to 7</li>
<li><a href=""><code>0f2b21b</code></a> Merge pull request <a href="">#1037</a> from TheHyrox/master</li>
<li><a href=""><code>7e9d4a7</code></a> Update motionpath.js with offset param</li>
<li><a href=""><code>c849093</code></a> Merge branch 'dev' into pr/1037</li>
<li><a href=""><code>3736d36</code></a> Merge pull request <a href="">#1098</a> from sxnb/fix/scaling-scroll-target</li>
<li>Additional commits viewable in <a href="https://github.com/juliangarnier/anime/compare/v3.2.2...v4.2.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=animejs&package-manager=npm_and_yarn&previous-version=3.2.2&new-version=4.2.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8c31edb44b97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.