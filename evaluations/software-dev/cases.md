# software-dev evaluation cases

Run inside a throwaway project (sandbox), with the plugin installed. Record result, date and errors below. Status stays `not run` until executed.

| # | Type | Input to `/software-dev:dev-flow` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Common | "Add a function `slugify(text)` that lowercases and replaces spaces with hyphens, with tests" | tdd used (test before code), tests pass, review reported, commit made | PASS 2026-10-27 |
| 2 | Hard | "Add pagination to a list endpoint, keeping existing tests green" (project with 5+ existing tests) | existing tests still pass, full suite run once at end, review finds or clears issues | PASS (see notes) 2026-10-27 |
| 3 | Failure | A spec with a deliberately failing dependency (e.g. a function that throws on empty input and the spec says nothing about it) | diagnosing-bugs invoked, root cause stated, no silent test deletion, honest final report | PARTIAL 2026-10-27 |

Plugin-level checks (done 2026-10-27): `claude plugin validate` passes (icon warning only). Installer dry-run, install, reinstall guard, rollback restoring a pre-existing file, and zip build: all verified in a temp sandbox.

## Results (Claude Code 2.1.311, claude-sonnet-5-5, headless `claude -p --plugin-dir`, sandbox in %TEMP%)

- **Case 1: PASS.** Skills called: implement, tdd, code-review. Test written before code, 2/2 pass, commit made. First run FAILED: `implement` had `disable-model-invocation: true`, so the command could not call it. Fixed in our copy (see SOURCES.md).
- **Case 2: PASS, with a gap.** Skills called: implement, code-review. 12/12 tests pass (6 existing + 6 new), no-arg call still works, commit made. `tdd` was not called, so test-first was not verified here.
- **Case 3: PARTIAL.** Skills called: implement, tdd, code-review. The spec had a hidden problem (an existing test expected `average([])` to be 0 but the code returned NaN). The agent fixed the code, kept the test, 7/7 pass, commit made. No test was deleted. `diagnosing-bugs` was NOT called, because the cause was obvious (the command only calls it when the cause is not obvious after one attempt).
- **Not yet verified:** the `diagnosing-bugs` path. Needs a case where the cause is not obvious (e.g. an intermittent or multi-file bug).
- **Observation:** in case 1, code-review ran as a forked step and returned no text, so its value is unproven.
- Each case is a single run, not a statistical sample.

## Case 4: hidden bug (added 2026-10-27)

Input: "existing test suite is failing, fix without weakening tests, state the root cause" in a 3-file project where `memo.js` keys its cache on `args[0]` only (so `priceIn(10,'EUR')` returns the cached USD result).

- **Run A (original dev-flow): root cause found and fixed, 3/3 pass, but `diagnosing-bugs` NOT called.** The agent never "failed", so step 2 never triggered.
- **Fix:** added step 0 to `commands/dev-flow.md`: call `diagnosing-bugs` first when the task starts from a bug, failing test or broken build.
- **Run B (after fix): PASS.** Skills called: diagnosing-bugs, code-review. 3/3 pass, commit made, no test touched.
- Single run each. The `diagnosing-bugs` path is now verified once.
