---
description: Run the software-dev workflow on a spec or ticket (implement -> tdd -> code-review, diagnosing-bugs on failure)
argument-hint: <spec or ticket reference>
---

Run this workflow for: $ARGUMENTS

0. If the task starts from a bug report, a failing test or a broken build, call the Skill tool with "diagnosing-bugs" first and state the root cause before changing code.
1. Call the Skill tool with "implement" for the work above. It uses "tdd" at seams.
2. If a test, typecheck or build fails and the cause is not obvious after one attempt, call the Skill tool with "diagnosing-bugs", then go back to step 1.
3. When tests pass, call the Skill tool with "code-review" on the diff.
4. Report: what changed, tests run (with results), review findings, anything not done.

