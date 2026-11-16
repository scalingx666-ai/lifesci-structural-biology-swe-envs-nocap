# Issue

**Title:** Bump filelock from 3.29.5 to 4.2.1

## Description

Bumps [filelock](https://github.com/tox-dev/py-filelock) from 3.29.5 to 4.2.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/tox-dev/py-filelock/releases">filelock's releases</a>.</em></p>
<blockquote>
<h2>4.2.1</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h3>Bug fixes</h3>
<ul>
<li>On a singleton wrapper, <code>AsyncReadWriteLock.close()</code> and <code>AsyncSoftReadWriteLock.close()</code> end only the holds that tasks acquired through that wrapper. A reader that arrives during <code>close()</code> gets the closed error instead of joining the ending hold. After synchronous code closes or force-releases the shared lock, the wrappers refuse to admit readers into the ended hold, and <code>close()</code> on such a wrapper returns. Closing one wrapper no longer ends a task's nested hold taken through another wrapper on the same path. <a href="">#832</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li><code>ReadWriteLock</code> locks again after a <code>release()</code> that an exception from a signal handler interrupted. The async read-write wrappers stop admitting readers into such a level. The async read-write locks forget a hold whose backend release failed after the backend let go, and they free the memory of each acquire that times out or is canceled. <code>AsyncFileLock</code> returns from <code>release()</code> after a few hundred acquires gave up behind a waiting one. An exception from a signal handler delivered while an <code>AsyncFileLock</code> call joins its queue no longer blocks every later call on that lock. <a href="">#833</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix <code>ReadWriteLock</code> acting on <code>-journal</code>, <code>-wal</code> or <code>-shm</code> files another process puts beside its database: a write could land in another file, a reader could get in beside a writer, and an acquire could fail. SQLite now opens the database by name only in a directory no other account can write, and through a private hard link elsewhere. On Windows the directory's access control list decides. Where hard links are unavailable, keep the database in a directory other accounts cannot write, such as one under <code>%LOCALAPPDATA%</code>. The lock removes link directories through a checked descriptor rather than by name, reads a link directory's name only when the locking account owns it, and leaves alone a directory with other content renamed onto a link directory's name. A database whose schema takes more than a few kilobytes to load raises <code>ValueError</code> instead of running past the acquire timeout. <a href="">#834</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix five bugs in opening the lock file. <code>UnixFileLock</code> no longer truncates a file it did not create, such as one renamed to the lock path, and no longer applies <code>mode</code> to it. An <code>on_acquired</code> hook that writes holder metadata now truncates the file itself. A lease (Linux) or an oplock (Windows) on the lock file or a soft lock's marker no longer holds <code>acquire()</code> past its <code>timeout</code> or <code>blocking=False</code>, and an oplock no longer holds <code>release()</code>; <code>ReadWriteLock</code> on Windows waits for its <code>timeout</code> and raises <code>Timeout</code>. On Windows, a <code>mode</code> without group and other bits, such as <code>0o600</code>, now creates the lock file with an owner-only permission list; the <code>ReadWriteLock</code> database gets the same. The soft locks' writability check no longer follows a symlink swapped in at the lock path. On a filesystem without <code>flock</code>, a contender from another account now waits on a marker it cannot write instead of raising <code>PermissionError</code>. <a href="">#835</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix <code>SoftFileLock</code>, <code>MarkerSoftFileLock</code> and <code>SoftFileLease</code> removing a live holder's marker in three cases: the holder and the contender run in Linux time namespaces with different boottime offsets; only one of them can read the boot id; a process other than the owner rewrote the marker. Soft markers no longer carry group or other write bits. A process name containing a carriage return or another line separator no longer makes the stale check raise <code>ValueError</code>. When <code>/proc/self/ns/time</code> exists but cannot be read, the stale check no longer compares start times and keeps the marker. <a href="">#836</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>The async read-write locks record their hold under a task owner, so synchronous code on the executor thread that took the hold can no longer re-enter or release it. <code>AsyncSoftReadWriteLock</code> gives back one level on release, so synchronous readers of a shared singleton keep theirs. <code>SoftReadWriteLock</code> tracks read levels per thread: <code>release()</code> from a thread that holds none raises <code>RuntimeError</code>. After its heartbeat recorded a lost hold, it refuses new acquires until that hold is released. <a href="">#838</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li><code>StrictSoftFileLock</code> creates <code>&lt;path&gt;.filelock</code> and its <code>claims</code> directory with the lock's <code>mode</code> and sets the sticky bit (a directory flag that lets only a file's owner remove it) on both. On the next acquisition it narrows a directory it owns that an earlier release created wider; it leaves a directory of another account as it is, so remove such leftovers by hand. It reaches <code>claims</code> through a descriptor opened without following symlinks; on Windows it holds both directories open and refuses a junction (a directory that points at another directory). Under a sticky parent such as <code>/tmp</code> it refuses a coordination directory of another account, as <code>SoftReadWriteLock</code> does for <code>&lt;path&gt;.rw</code>. One read grace now covers a whole claim scan, a failed claim cleanup no longer leaves the sentinel descriptor open, and a non-regular node at a sentinel private-record name raises <code>SoftFileLockProtocolError</code>. On Windows, contenders read claims without blocking their owner's unlink. <a href="">#839</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix a lock reporting a hold the OS had dropped after a signal handler raised during <code>acquire</code> or <code>release</code>. A release that a signal handler cuts short after it has started now completes before the error propagates. A handler that acquires the lock its own thread is releasing now gets <code>RuntimeError</code> instead of a hold that stays held. The singleton cache no longer hands out an <code>is_singleton=True</code> lock or a <code>ReadWriteLock</code> whose finalizer is running, which released the new holder's lock. A signal during <code>os.fork()</code> no longer leaves the other threads blocked in their next lock call, and a fork from another thread no longer waits for a <code>ReadWriteLock</code> acquire on a busy database. <a href="">#840</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix a lock on a relative path locking a file in the directory the process changed to while the lock waited, and leaving its marker behind on release after such a change. The path resolved when an acquisition starts stays in use until the hold ends. An <code>is_singleton=True</code> lookup no longer returns a cached lock whose relative path now resolves to another file; a held lock still matches the file it holds. A rename of the lock's directory during a hold no longer leaves the marker behind or reports a false lease compromise, and a waiter no longer creates a second lock file in a directory that was renamed away. <a href="">#841</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li><code>SoftReadWriteLock</code> reaches its records through descriptors of <code>&lt;path&gt;.rw</code> and <code>gen</code> or <code>holders</code> opened without following symlinks. On Windows it holds those directories open and refuses a junction (a directory that points at another directory). A tree swapped in after an earlier acquire therefore cannot redirect them. Its heartbeat rewrites a holder record only when the name still leads to the file it created, and does not block on a FIFO (a named pipe). A heartbeat that finds <code>&lt;path&gt;.rw</code> replaced by a symlink or junction reports the hold lost instead of ending the heartbeat thread. A live lock object repeats the ownership check whenever the tree it opens is not the one it prepared. <a href="">#842</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix <code>SoftFileLock</code>, <code>MarkerSoftFileLock</code> and <code>SoftFileLease</code> removing or displacing a live holder's marker in five cases. ext4 gave a freed inode number to the next marker. A stalled <code>FileLock</code> removed its <code>ENOSYS</code> placeholder after a peer replaced it. A failed acquire cleaned up after a successor took the path. A stale break left the lock path empty while it checked the marker it had moved. A <code>lifetime</code> break judged a marker by a reused inode number. On Linux and macOS a stale marker now changes hands in one atomic exchange. On other platforms without one, except Windows, including NFS and SMB, the marker stays in place and waits for <code>timeout</code> or <code>break_lock()</code>. Restoring a marker no longer follows a symlink found under the break name. A holder that releases while a peer's exchange has its marker aside leaves a record no lock parses, so the put-back lands a marker that ages out. A lease heartbeat that finds another file at the lock path once, while a peer's break has its marker aside, waits for the next refresh before it reports a compromise. A contender that finds a dead breaker's marker puts back the marker that breaker left under its break name. A marker is the breaker's own only when it names the breaker's process on this host; the same process number on another host is a holder. A contender takes a stranded marker under a name of its own before it puts the marker back, so two contenders no longer reverse each other's exchange and remove the live holder's marker. A claim left behind by a failed put-back is retried on the next poll. <a href="">#843</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Canceling an <code>AsyncReadWriteLock</code> or <code>AsyncSoftReadWriteLock</code> acquire that waits for another process now stops the wait and raises the cancellation. It used to wait until that process released, or raise <code>Timeout</code>. A <code>thread_local=True</code> <code>AsyncFileLock</code> that threads with their own event loops share no longer deadlocks when one thread waits for the lock while another holds it. <a href="">#844</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li><code>SoftReadWriteLock</code> refuses a commit that lands a whole retention window behind the log, so two committers stalled at adjacent generations can no longer admit a second writer. Its stale check samples the clock before it reads a holder record, so a pause between the two no longer counts as time the record stayed unchanged. <a href="">#845</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix a <code>SoftFileLock</code> contender evicting an empty marker after two seconds while its owner held the lock. The owner is a <code>SoftFileLock</code> before 3.22, which writes nothing into its marker, or a current one still writing its record. An empty marker now reads as held, and <code>timeout</code>, <code>lifetime</code> or <code>break_lock()</code> clears it. A contender that finds an empty marker a dead breaker left aside puts it back instead of removing it. <a href="">#846</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix <code>ReadWriteLock</code> on Windows acting on <code>-journal</code> and <code>-wal</code> files another account places beside its database: an acquire could fail with <code>OperationalError</code>, or SQLite could replay the journal and delete the file it names. The lock now reads the database directory's access control list. Where an account other than the locking account, <code>SYSTEM</code> and <code>Administrators</code> can add or remove names, SQLite opens a hard link inside a directory only those accounts can write. A filesystem without hard links raises <code>OSError</code>. <a href="">#854</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
<li>Fix <code>SoftReadWriteLock</code> subclasses sharing singleton instances with the base class or sibling subclasses. Each concrete class now keeps its own cache and construction guard, including after fork, while preserving cooperative class-definition keywords. <a href="">#855</a> by <a href="https://github.com/AryanRG"><code>@​AryanRG</code></a>.</li>
</ul>
<p><a href="https://pypi.org/project/filelock/4.2.1/">PyPI release</a></p>
<p><a href="https://github.com/tox-dev/filelock/compare/4.2.0...4.2.1">Full Changelog</a></p>
<h2>4.2.0</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h3>Bug fixes</h3>
<ul>
<li>Fix <code>StrictSoftFileLock</code> raising <code>SoftFileLockProtocolError</code> on Windows when a contender read a claim whose owner was still finishing its unlink. <a href="">#829</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
</ul>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h3>Performance</h3>
<ul>
<li><code>import filelock</code> is about twice as fast: lock types other than <code>FileLock</code> load on first use. <a href="">#831</a> by <a href="https://github.com/gaborbernat"><code>@​gaborbernat</code></a>.</li>
</ul>
<p><a href="https://pypi.org/project/filelock/4.2.0/">PyPI release</a></p>
<p><a href="https://github.com/tox-dev/filelock/compare/4.1.2...4.2.0">Full Changelog</a></p>
<h2>4.1.2</h2>
<p><!-- raw HTML omitted --><!-- raw HTML omitted --></p>
<h3>Bug fixes</h3>
<ul>
<li>Fix read-lock acquisition on SQLite versions older than 3.33.0 by using <code>sqlite_master</code> for the schema probe. <a href="">#827</a> by <a href="https://github.com/DawnofGenX"><code>@​DawnofGenX</code></a>.</li>
<li>Raise <code>IsADirectoryError</code> (or <code>PermissionError</code> on Windows) for a directory lock path regardless of its write permissions. <a href="">#822</a> by <a href="https://github.com/feiiiiii5"><code>@​feiiiiii5</code></a>.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/tox-dev/filelock/blob/main/docs/changelog.rst">filelock's changelog</a>.</em></p>
<blockquote>
<p>###########
Changelog
###########</p>
<p>.. towncrier-draft-entries:: Unreleased</p>
<p>.. towncrier release notes start</p>
<p>.. _release-4-2-4:</p>
<hr />
<p>4.2.4 (2026-10-19)</p>
<hr />
<p>.. _release-4-2-3:</p>
<hr />
<p>4.2.3 (2026-10-19)</p>
<hr />
<p>.. _release-4-2-3-fixed:</p>
<h1>Fixed</h1>
<ul>
<li>Creating a lock on a Python 3.15 interpreter without <code>types.LazyImportType</code> no longer triggers <code>AttributeError</code> at
exit. :pr:<code>861</code> - by :user:<code>gaborbernat</code>.</li>
<li>Handle <code>EFTYPE</code> when a no-follow open refuses a symlink in a soft reader/writer lock's protocol tree, so heartbeat
reports lost ownership rather than a transient refresh error. :pr:<code>859</code> - by :user:<code>edsonsims</code>.</li>
</ul>
<p>.. _release-4-2-2:</p>
<hr />
<p>4.2.2 (2026-10-18)</p>
<hr />
<p>.. _release-4-2-2-fixed:</p>
<h1>Fixed</h1>
<ul>
<li>Fix a lock on a relative path that stayed held after a later <code>with lock:</code> ended, when an earlier <code>acquire()</code> had
failed because the working directory no longer exists. That call still raises :class:<code>FileNotFoundError</code>, and it now
leaves the lock's hold count unchanged. :pr:<code>856</code> - by :user:<code>spicysharkco</code>.</li>
</ul>
<p>.. _release-4-2-1:</p>
<hr />
<p>4.2.1 (2026-10-17)</p>
<hr />
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>60331bb</code></a> Release 4.2.1</li>
<li><a href=""><code>834bf13</code></a> 🧪 test(soft): skip Unix pin test on Windows</li>
<li><a href=""><code>9d15e38</code></a> fix(soft-rw): isolate subclass singleton registries (<a href="">#855</a>)</li>
<li><a href=""><code>e1e825b</code></a> 🐛 fix(open): keep lock files intact, honor deadlines and mode (<a href="">#835</a>)</li>
<li><a href=""><code>5e3f2ec</code></a> 🐛 fix(read-write): keep SQLite off shared names, bound schema (<a href="">#834</a>)</li>
<li><a href=""><code>bfa066d</code></a> 🐛 fix(strict): keep claim directories private to the lock (<a href="">#839</a>)</li>
<li><a href=""><code>977d2c3</code></a> 🐛 fix(soft): wait on an empty marker instead of evicting (<a href="">#846</a>)</li>
<li><a href=""><code>740ff66</code></a> 🐛 fix(soft): break stale markers without emptying the lock path (<a href="">#843</a>)</li>
<li><a href=""><code>86c6d5f</code></a> 🐛 fix(async): honor cancellation and per-thread gates (<a href="">#844</a>)</li>
<li><a href=""><code>eeceaa8</code></a> 🐛 fix(soft): keep live holders when owner identity differs (<a href="">#836</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/tox-dev/py-filelock/compare/3.29.5...4.2.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=filelock&package-manager=uv&previous-version=3.29.5&new-version=4.2.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2cdbc8816857`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.