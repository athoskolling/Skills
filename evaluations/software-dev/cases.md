# software-dev evaluation cases

Run inside a throwaway project (sandbox), with the plugin installed. Record result, date and errors below. Status stays `not run` until executed.

| # | Type | Input to `/software-dev:dev-flow` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Common | "Add a function `slugify(text)` that lowercases and replaces spaces with hyphens, with tests" | tdd used (test before code), tests pass, review reported, commit made | not run |
| 2 | Hard | "Add pagination to a list endpoint, keeping existing tests green" (project with 5+ existing tests) | existing tests still pass, full suite run once at end, review finds or clears issues | not run |
| 3 | Failure | A spec with a deliberately failing dependency (e.g. a function that throws on empty input and the spec says nothing about it) | diagnosing-bugs invoked, root cause stated, no silent test deletion, honest final report | not run |

Plugin-level checks (done 2026-10-27): `claude plugin validate` passes (icon warning only). Installer dry-run, install, reinstall guard, rollback restoring a pre-existing file, and zip build: all verified in a temp sandbox.
